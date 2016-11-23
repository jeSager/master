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
  cout << "enter ReadNetwork" << endl;

  while (in_file.HasNext()) {
    string line = in_file.NextLine();
    Node node;
    node.ParseInputLine(line);
    network_[node.GetNodeLabel()] = node;
  }

  cout << "leave ReadNetwork" << endl;
}

/*********************************************************************
 * Function to run the simulation.
 *
 * Parameters:
**/
void Simulate::RunSimulation() {
  bool done = false;
  int time = 0;

  cout << "enter RunSimulation" << endl;

  cout << "leave RunSimulation" << endl;
}

/*********************************************************************
 * Function to 'toString' the network configuration.
**/
string Simulate::ToStringNetwork(string label)
{
  string s = label + "\n";
  s += "NODECOUNT: " + Utils::Format(number_of_nodes_, 4) + "\n";
  map<string, Node>::iterator it;
  for (it = network_.begin(); it != network_.end(); ++it) {
    s += (it->second).ToString() + "\n";
  }

  return s;
}

