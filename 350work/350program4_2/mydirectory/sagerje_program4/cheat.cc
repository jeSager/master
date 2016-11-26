#include "simulate.h"

/******************************************************************************
 *3456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
 * Class 'Simulate' for simulating a network.
 *
 * Author: Duncan A. Buell
 * Used with permission and modified by: Jane Random Hacker
 * Date last modified: 4 November 2016
**/

static string kTag = "SIMULATE: ";

/******************************************************************************
 * Constructor
**/
Simulate::Simulate() {
}

/******************************************************************************
 * Destructor
**/
Simulate::~Simulate() {
}

/******************************************************************************
 * General functions.
**/

/*********************************************************************
 * Function to read the network configuration FROM STANDARD INPUT.
 *
 * Parameters:
 *   in_file: the 'Scanner' from which to read
**/
void Simulate::ReadNetwork(Scanner& in_file) {
  cout << "Enter ReadNetwork" << endl;
  number_of_nodes_ = 0;

  while (in_file.HasNext()) {
    string line = in_file.NextLine();
    Node node;
    node.ParseInputLine(line);
    network_[node.GetNodeLabel()] = node;
    number_of_nodes_ ++;
  }

  cout << "Leave ReadNetwork" << endl;
}

/*********************************************************************
 * Function to run the simulation.
 *
 * Parameters:
**/
void Simulate::RunSimulation() {
  cout << "Enter RunSimulation" << endl;

  // get node 0
  map<string, Node>::iterator start = network_.begin();
  string label_zero = (start->first);

  // Broadcast from it
  BroadcastFrom( label_zero, "SIMULATOR" );

  cout << "Leave RunSimulation" << endl;
}


void Simulate::BroadcastFrom( string node_label, string from ){

  // get the node for the label passed
  Node node = network_[ node_label ];

  if( node.GotMessageFrom() == "DUMMYLABEL" ){

    if( from != "SIMULATOR" ) clock_ ++;

    // set the message time and from values
    node.SetMessageAtTime( clock_, from );

    // save the node in the network
    network_[ node_label ] = node;

    vector<string> link_labels = node.GetLinkLabels();

    for( vector<string>::iterator it = link_labels.begin();
                                 (! done_ ) && it != link_labels.end(); ++it ){
      BroadcastFrom( (*it), node_label );
    }
  }

}


/*********************************************************************
 * Function to 'toString' the network configuration.
**/
string Simulate::ToStringNetwork(string label) {

  string formatted_line = "\n" + string(80,'_') + "\n\n";
  string dotted_line = string(80,'.') + "\n\n";


  string s = formatted_line + label + "\n" + dotted_line;

  s += "NODECOUNT: " + Utils::Format(number_of_nodes_, 4) + "\n";
  map<string, Node>::iterator it;
  for (it = network_.begin(); it != network_.end(); ++it)
    s += (it->second).ToString() + "\n";

  s += formatted_line;

  return s;
}

