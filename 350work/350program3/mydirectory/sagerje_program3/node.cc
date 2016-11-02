 #include "node.h"

/******************************************************************************
 *3456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
 *
 * Class Node used to hold child values used in a topological sort.
 *   A Node is read from a graph with GraphCode::ReadGraph(&Scanner in_stream).
 *   A Node a node can be sorted by GraphCode::DoTopoSort(ofStream& out_stream).
 *
 * Author: James Sager
 * Date:   Wed Oct 26 14:59:16 EDT 2016
 *
**/

/******************************************************************************
 * Overloaded Constructor
 * ----------------------
 *
 * Parameter Description:
 *
 *   When Node is constructed, it should be given an integer parameter.
 *     The integer parameter "which" will be assigned to the private
 *     class variable "node_number_".
 *
 *   If a parameter is not provided initally, the variable 'node_number_' is
 *     initialized to the integer -99 by the header file.  The variable can
 *     be set at a later time with the function 'SetNodeNumber'.
 *
**/
Node::Node(){
}

Node::Node(int which){
  node_number_ = which;
}



/******************************************************************************
 * Destructor
 * ----------
**/
Node::~Node(){
}



/******************************************************************************
 * Accessor Functions
 * ------------------
 *
 * Return Description:
 *   These five functions either return the value of variables that are private
 *   to the class or a property of variable that is private to the class.
 *
**/
int Node::GetNodeNumber()const{
  return node_number_;
}
int Node::GetIncomingCount()const{
  return incoming_;
}
bool Node::HasNotBeenVisited()const{
  return ! visited_;
}
int Node::GetNumberOfChildren()const{
  return child_subs_.size();
}
vector<int> Node::GetChildSubs()const{
  return child_subs_;
}



/******************************************************************************
 * Mutator Functions
 * -----------------
 *
 * Parameter Description:
 *   These functions are used to change the value of variables that are
 *   private to the class.  The parameters are values used to change
 *   the private variables.
 *
**/
void Node::AddChildSub(int which){
  child_subs_.push_back(which);
}
void Node::SetVisited(bool what){
  visited_ = what;
}
void Node::IncrementIncoming(){
  incoming_ ++;
}
void Node::DecrementIncoming(){
  incoming_ --;
}
void Node::SetNodeNumber(int which){
  node_number_ = which;
}


/******************************************************************************
 * General ToString Function
 * -------------------------
 *
 *  Description:
 *    The return string is the node_number_ followed by the string values of
 *    the integers included in the child_subs_ vector.
 *
**/
string Node::ToString()const{

  string s = "\tNODE " + Utils::Format(node_number_, 2) + ":  ";
//should output something if there are no nodes here..
  vector<int>::const_iterator iter;
  for(iter = child_subs_.begin(); iter != child_subs_.end(); ++iter)
     s += Utils::Format(*iter, 2) + "   ";

  s += "\n";
  return s;
}



