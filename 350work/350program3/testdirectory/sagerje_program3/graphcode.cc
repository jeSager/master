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

//********************* ADDED LINE TO SET ORPHAN PARAMETER ********************
/******************************************************************************
 * Function 'ReadGraph'.
 *
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
  vector<int> children;

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

  else
    Utils::log_stream << TAG << "Terminating. No data in input file." << endl;

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
      the_graph_.at(the_child).SetIsOrphan(false); // <<<<<<<<<<     LINE ADDED
    }

    this->the_graph_.at(parent_node_num) = node;
  }


#ifdef EBUG
  cout << TAG << "leave ReadGraph " << endl;
#endif

} // end ReadGraph



/******************************************************************************
 * Function 'DoTopoSort'.
 *
 * Description:
 *   This function sorts the Nodes created by the function 'ReadGraph'
 *   It is dependent on the function 'RecursiveDFS'
 *
 * Parameter:
 *   out_stream -- the output stream to which to write the eventual result
**/
void GraphCode::DoTopoSort(ofstream& out_stream){

#ifdef EBUG
  cout << TAG << "enter DoTopoSort\n";
#endif

  // RecursiveDFS is called using only orphan nodes
  for(vector<Node>::iterator it = the_graph_.begin();
                                                  it != the_graph_.end(); ++it)
    if( (*it).IsOrphan() && (*it).IsNotVisited()){

      out_stream << "Begin DFS from orphan node: ";
      out_stream << (*it).GetNodeNumber() << endl;
      RecursiveDFS((*it), the_graph_, out_stream );
  }

  // The sort was successful if the next condition is met;
  // Else, print the error.
  if( node_stack_.size() == the_graph_.size() ){

    out_stream << endl << string(70,'_') << endl;
    out_stream << endl << "THE FINAL SORT ORDER:  " << endl;
    out_stream << string(70,'.') << endl << endl;

    while( ! node_stack_.empty() ){
      out_stream << node_stack_.top().GetNodeNumber() << " ";
      node_stack_.pop();
    }
  }
  else
    out_stream << "ERROR:  ONLY ACYCLIC GRAPHS CAN BE SORTED." << endl;


#ifdef EBUG
  cout << TAG << "leave DoTopoSort\n";
#endif

} // end DoTopoSort



/******************************************************************************
 * Function 'RecursiveDFS'
 *
 * Used to populate the private class variable node_stack:
 *   - Sets the parameter node's property to visited.
 *   - For each child that has Not been visited, this recurses.
 *
 * Initialized by the DoTopoSort Function if an orphan node exits.
 * Called from within itself, if a child node exits.
 *
 * Parameters:
 *   Node         n     The parent node that children are visited from.
 *   vector<Node> g     The graph of nodes.
 *   ofstream     out   The outfile stream.
**/
void GraphCode::RecursiveDFS(Node& n, vector<Node>& g, ofstream& out){

  vector<int> subs = n.GetChildSubs();

  n.SetAsVisited();

  out << "\t\tDecending from node " << n.GetNodeNumber() << endl;

  for(vector<int>::iterator it = subs.begin(); it != subs.end(); ++it)
    if( g.at(*it).IsNotVisited() )
      RecursiveDFS(g.at(*it), g, out);

  out << "Add " << n.GetNodeNumber() << " to the stack" << endl;
  node_stack_.push(n);

} // end RecursiveDFS



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



