#include "node.h"

/******************************************************************************
 *3456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
 * Class 'Node' for holding data for a node.
 *
 * Author: Duncan A. Buell
 * Used with permission and modified by: Jane Random Hacker
 * Date last modified: 4 November 2016
 *
 * Modified by: James Sager
 * Modified Date:   Tuesday,29 November 2016
 *
**/

static const string kTag = "NODE: ";

/******************************************************************************
 * Constructor
**/
Node::Node(){
  node_label_ = Node::kDummyLabel;
  time_got_message_ = Node::kDummyTime;
  got_message_from_node_ = Node::kDummyLabel;
}

/******************************************************************************
 * Destructor
**/
Node::~Node(){
}

/******************************************************************************
 * Accessors
**/
/*********************************************************************
 * Get a 'vector' of the link labels
**/
vector<int> Node::GetLinkLabels(){
  return links_;
}

/*********************************************************************
 * Get the time when the message was received.
**/
int Node::GotMessageAtTime(){
  return time_got_message_;
}

/*********************************************************************
 * Get the node from whom the message was received.
**/
int Node::GotMessageFrom(){
  return got_message_from_node_;
}

/*********************************************************************
 * Get the node number of this node.
**/
int Node::GetNodeLabel(){
  return node_label_;
}

/*********************************************************************
 * Set the time when the message was received.
**/
void Node::SetMessageAtTime(int when, int from_whom){
   cout << "    NODE: " << Utils::Format(node_label_, 3);
   cout << "   CLOCK: " << Utils::Format(when, 3);
   cout << "    FROM: " << Utils::Format(from_whom, 3) << endl;

  time_got_message_ = when;
  got_message_from_node_ = from_whom;
}


/*********************************************************************
 * Parse an input line to set up the node links.
 *
 * Labels are defined for this node and links from this node:
 *
 * Parameters:
 *   line -- the input line as a string
**/
void Node::ParseInputLine(string line){

  ScanLine scanline;
  scanline.OpenString(line);

  // A label for this node:
  node_label_ = Utils::StringToInteger(scanline.Next());

  while (scanline.HasNext())
    // A vector node labels that this node links to:
    links_.push_back(Utils::StringToInteger(scanline.Next()));

}

/*********************************************************************
 * Usual 'toString' function.
**/
string Node::ToString() const {

  string s = "";

  s += Utils::Format(node_label_, 4);
  s += " TIME: " + Utils::Format(time_got_message_, 4);
  s += " (FROM: " + Utils::Format(got_message_from_node_, 4) + ") ";

  s += " LINKS: ";
  vector<int>::const_iterator it;
  for (it = links_.begin(); it != links_.end(); ++it){
    s += " " + Utils::Format(*it, 4);
  }

  return s;
}

