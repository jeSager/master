#include "graphcode.h"

/******************************************************************************
 *3456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
 * Class GraphCode is used to do a topological sort on graph input.
 *
 * Application Functions:
 *     ReadGraph:   This reads a graph from a text file and creates Node(s).
 *     DoTopoSort:  This sorts the Node(s).
 *     ToString:    This is the application's string output.
 *
 * Author: Duncan A. Buell
 * Date last modified: 13 July 2015
 *
 * Modified by:  James Sager
 * Date:         Wed Oct 26 14:59:16 EDT 2016
 *
**/

static const string TAG = "GraphCode: ";

/******************************************************************************
 * Constructor
**/
GraphCode::GraphCode() {
}

/******************************************************************************
 * Destructor
**/
GraphCode::~GraphCode() {
}

/******************************************************************************
 * General functions.
**/

/******************************************************************************
 * Function 'ReadGraph'.
 * We read data from the input stream and create a graph.
 *
 * The only thing tricky about this is to make sure we have all the nodes
 * accounted for in the 'vector' since we use the subscript also as the node
 * number. That's the reason for reading in the beginning and ending node
 * numbers and creating an initial dummy 'vector'.
 *
 * Parameter:
 *     in_stream - the 'Scanner' from which to read
**/
void GraphCode::ReadGraph(Scanner& in_stream) {

#ifdef EBUG
  cout << TAG << "enter ReadGraph" << endl;
#endif

  ScanLine scanline;

  int first_node, last_node;

  if (in_stream.HasNext()) {
    first_node = in_stream.NextInt();
    last_node = in_stream.NextInt();
    assert (0 == first_node);
    // Note that we read inclusive through the 'lastNode' value.
    // Create a 'vector' of dummy nodes just so our 'vector' is of the
    //     right length.
    for(int i = 0; i <= last_node; ++i) {
      Node node = Node(i);
      the_graph_.push_back(node);
    }
  }

  else {
    Utils::log_stream << TAG << "Terminating. No data in input file." << endl;
  }

  // Read line by line, one line for each node.
  // Use each line to create a 'ScanLine'.
  // Then parse each 'scanLine' instance to get the child node numbers.
  // And add each child node number to the children for the node in question.
  while (in_stream.HasNext()) {

    string the_line = in_stream.NextLine();
    scanline.OpenString(the_line);
    int parent_node_num = scanline.NextInt();
    Node node = the_graph_.at(parent_node_num);

    while( scanline.HasNext()) {
      int the_child = scanline.NextInt();
      node.AddChildSub(the_child);
    }

    this->the_graph_.at(parent_node_num) = node;
  }

#ifdef EBUG
  cout << TAG << "leave ReadGraph " << endl;
#endif

} // end ReadGraph


// For topological sorting to be possible,
//    nodes are not allowed to have any edge leading to a ancestor nodes.
// The graph must be ascyclic.

//...............................................................
//
// Properties / Goals
//...............................................................
//
// path_ is a vector of strings that will be used
//
// searching the nodes, need to note the order in which a node becomes
// a dead end.
//
// set all the nodes as unvisited
//   if a node is visited, it cannot be a proper decendent
//
// determine if the graph is acyclic:  test for a cycle
//
//
// Try this:
// for each node
//    the node is a starting point if there are no incoming edges
//    for each remaining node
//       delete a node with no incoming edges
//       if cannot, fail
//       else, success




/******************************************************************************
 * Function 'DoTopoSort'.
 *
 * Description:
 *   This function sorts the Nodes created by the function 'ReadGraph'
 *
 * Parameter:
 *   out_stream -- the output stream to which to write the eventual result
**/
void GraphCode::DoTopoSort(ofstream& out_stream){

#ifdef EBUG
  cout << TAG << "enter DoTopoSort\n";
#endif

//  stack<Node> nodeStack;
  Reset(out_stream);
//  bool fullStack = false;
//
//  for(vector<Node>::iterator nodeIter = the_graph_.begin();
//                                     nodeIter != the_graph_.end(); ++nodeIter){
//    out_stream << (*nodeIter).GetNodeNumber() << "  " << (*nodeIter).GetIncomingCount() << endl;
//      nodeStack = Recurse((*nodeIter), nodeStack);
//    }
//
//
//  fullStack = (nodeStack.size() == the_graph_.size());
//  while(nodeStack.empty() == false){
//    if(fullStack)
//      out_stream << nodeStack.top().GetNodeNumber() << " ";
//    nodeStack.pop();
//  }

#ifdef EBUG
  cout << TAG << "leave DoTopoSort\n";
#endif

} // end DoTopoSort



/******************************************************************************
 * Function 'Recurse'
 * This recursive function is initally called by DoTopoSort.
 * It will recurse while there are child nodes without incoming edges.
 *
 * Parameter:
 *   A single node.
**/
stack<Node> GraphCode::Recurse(Node n, stack<Node> nodeStack){

  vector<Node> children = GetChildren(n);
//  bool fullStack;

  if(n.HasNotBeenVisited()){
    nodeStack.push(n);
    n.SetVisited(true);
    for(vector<Node>::iterator childIter = children.begin();
                                    childIter != children.end(); ++childIter){
      (*childIter).DecrementIncoming();
      nodeStack=Recurse(n, nodeStack);
//      fullStack = (nodeStack.size() == the_graph_.size());
//      if(! fullStack){
//        (*childIter).IncrementIncoming();
//        (*childIter).SetVisited(false);
//      }
    }
  }

  return nodeStack;
}



/******************************************************************************
 * Function 'GetChildren'
 * This can get the child nodes of any node.
 *
 * Returns:
 *   A vector of child nodes
**/
vector<Node> GraphCode::GetChildren(Node n){

  vector<Node> children;
  vector<int> childSubs = n.GetChildSubs();

  for(vector<int>::iterator childNum = childSubs.begin();
                                       childNum != childSubs.end(); ++childNum)
    for(vector<Node>::iterator node = the_graph_.begin();
                                              node != the_graph_.end(); ++node)
      if(*childNum == (*node).GetNodeNumber())  children.push_back(*node);

  return children;

} // end GetChildren



/******************************************************************************
 * Function 'Reset'
 * Resets the visited
 *
 * Parameter:
 *   A vector of Nodes.
**/
void GraphCode::Reset(ofstream& out){

  stack<Node> nodeStack;
  vector<int> incomingVector;
  vector<int> childSubs;
  int max = 0;

  // make the incomingVector
  for(vector<Node>::iterator node = the_graph_.begin();
                                             node != the_graph_.end(); ++node){
    (*node).SetVisited(false);
    childSubs = (*node).GetChildSubs();

    for(vector<int>::iterator nodeNum = childSubs.begin();
                                         nodeNum != childSubs.end(); ++nodeNum)
      incomingVector.push_back(*nodeNum);
  }

  // increment incoming accordingly for each node, find max incoming
  for(vector<Node>::iterator node = the_graph_.begin();
                                             node != the_graph_.end(); ++node){
    for(vector<int>::iterator nodeNum = incomingVector.begin();
                                    nodeNum != incomingVector.end(); ++nodeNum)
      if( (*node).GetNodeNumber() == (*nodeNum))
        (*node).IncrementIncoming();
    max = ((*node).GetIncomingCount() > max) ? (*node).GetIncomingCount() : max;
  }

  // push the nodes on the stack in order of incoming edges
  for( int i = max; i > -1; --i)
    for(vector<Node>::reverse_iterator node = the_graph_.rbegin();
                                             node != the_graph_.rend(); ++node)
      if((*node).GetIncomingCount() == i) // mark this visited here
        nodeStack.push(*node);            // check its branches
  while( ! nodeStack.empty()){
    out << nodeStack.top().GetNodeNumber() << " ";
    nodeStack.pop();
  }

}
// the list is smallest number with least incoming
// to largest number with most incoming
// incoming is prioritized




/******************************************************************************
 * Function 'ToString'
 * This is the usual 'ToString'. We output the 'vector' of 'Record'
 * instances without regard to the order.
 *
 * Returns:
 *   a formatted 'string' version of the 'vector' of records
**/
string GraphCode::ToString() const{
#ifdef EBUG
  cout << TAG << "enter ToString\n";
#endif

  string s = "";

  if (0 == the_graph_.size()) {
    s += "There are no nodes\n";
  }
  else {
    vector<Node>::const_iterator iter;
    for(iter = the_graph_.begin(); iter != the_graph_.end(); ++iter)
      s += (*iter).ToString();

    s += "\n";
  }

#ifdef EBUG
  cout << TAG << "leave ToString\n";
#endif
  return s;

} // end ToString



