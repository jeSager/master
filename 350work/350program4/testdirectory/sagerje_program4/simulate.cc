#include "simulate.h"

/******************************************************************************
 *3456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
 * Class 'Simulate' for simulating a network.
 *
 * Author: Duncan A. Buell
 * Used with permission and modified by: Jane Random Hacker
 * Date last modified: 4 November 2016
 *
 * Modified by:     James Sager
 * Modified Date:   Tuesday,29 November 2016
**/

static string kTag = "SIMULATE: ";

/******************************************************************************
 * Constructor
**/
Simulate::Simulate() {
  // Initialize the random number generator:
  srand( time( 0 ) );
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
 * Function to generate a random busy signal
 *
 * Note:  srand initialized in the class constructor
 *
 * Parameter:
 *   Node n
 *
 * Returns:
 *   True, 1 out of every 4 times called;
 *   Else, false.
**/
bool Simulate::IsBusy( Node n ){

  // Node zero cannot be busy

  bool b = ( n.GetNodeLabel() != 0 ) ? ( ( rand() % 4 ) == 0 ) : false;

  if( b ){
    cout << "--- NODE:  " << n.GetNodeLabel() << "   IS BUSY ";
    cout << "AT CLOCK "  << global_clock_ << endl;
  }

  return b;

}



/*********************************************************************
 * Function to read the network configuration FROM STANDARD INPUT.
 *
 * Parameters:
 *   in_file: the 'Scanner' from which to read
**/
void Simulate::ReadNetwork(Scanner& in_file){

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
 * Initializes the recursive Dispatch function.
 * Prints Results to the screen.
**/
void Simulate::RunSimulation() {

  cout << "Enter RunSimulation" << endl;

  // This map's key is the cyle number;
  // It will hold a queue for each cycle:
  map<int, queue<vector<int>>> cycle;

  // This is a vector of dispatched node labels:
  vector<int> dispatched;

  // A queue will always represent a cycle in this simulation.
  // This 'next' queue will hold a vector of associated "TO" and "FROM"
  //                                               nodes for node zero.
  queue<vector<int>> next_q;

  // Get node 0 and create it's vector.
  // Node zero comes from -1
  int from = -1;
  network_iter_ = network_.begin();
  vector<int> zero_v;
  zero_v.push_back( network_iter_ -> first );
  zero_v.push_back( from );

  // Push node zero's vector to the next cycle's queue:
  next_q.push( zero_v );

  // Add the next cycle's queue to the cycle-queue map:
  cycle[ global_clock_ ] = next_q;

  // Start recursion from zero:
  Dispatch( cycle, dispatched );

  // Print function output:
  cout << "Leave RunSimulation" << endl;
  cout << endl;
  cout << "SIMULATION RESULTS:  ";
  cout << number_of_nodes_ << " nodes received the message in " << endl;
  cout << "                     ";
  cout << global_clock_ << " clock cycles." << endl;

} // end RunSimulation function



void Simulate::Dispatch( map<int,queue<vector<int>>>& cycle,
                                                     vector<int>& dispatched ){

  // Defined by the function IsBusy
  bool busy;

  // Any queued node:
  Node n;

  // Will become true if the queued node has already been dispatched:
  bool isNotDispatched;

  // To search the cycle map:
  map<int, queue<vector<int>>>::iterator cycle_iter;

  // Queue nodes to a specific clock cycle ahead of global:
  int q_clock;

  // Any vector to be added to a given cycle queue:
  vector<int> addTo;

  // The queued node's links:
  vector<int> links;

  // This cycle's queue:
  queue<vector<int>> q = cycle[ global_clock_ ];



  // Run this cycle's queue until empty:
  while( ! q.empty() ){

    // This is the queued node:
    n = network_[ q.front()[0] ];

    busy = IsBusy( n );

    // Check if the queued node exists on the dispatched list:
    isNotDispatched = true;
    for( vector<int>::iterator label = dispatched.begin();
                    isNotDispatched && ( label != dispatched.end() ); ++label )
      isNotDispatched = ( n.GetNodeLabel() != ( *label ) );


    // If the queued node is busy, add it to the next cycle's queue
    if ( busy && isNotDispatched ){

      q_clock = global_clock_ + 1;

      // If there isn't a queue for the q_clock cycle, create one:
      cycle_iter = cycle.find( q_clock );
      if( cycle_iter == cycle.end() ){
        cycle.insert( pair<int, queue<vector<int>>>( q_clock,
                                                     queue<vector<int>>() ) );
      }

      // Add the vector to the queue at the q_cycle:
      cycle[ q_clock ].push( q.front() );
      cout << "--- NODE   " << n.GetNodeLabel() << "   ADDED TO ";
      cout << "THE QUEUE FOR CYCLE "  << q_clock << endl;

    }

    if( isNotDispatched && ! busy ){

      // Dispatch the queued node -- to be popped at end of the while loop:
      n.SetMessageAtTime( global_clock_, q.front()[1] );
      dispatched.push_back( n.GetNodeLabel() );

      // The q_clock must be reset for each queued node:
      q_clock = global_clock_;

      // Iterate the current node's links:
      links = network_[ q.front()[0] ].GetLinkLabels();
      for( vector<int>::iterator link = links.begin();
                                                 link != links.end(); ++link ){
        // Each link gets a new cycle:
        q_clock ++;

        // If there isn't a queue for the q_clock cycle, create one:
        cycle_iter = cycle.find( q_clock );
        if( cycle_iter == cycle.end() ){
          cycle.insert( pair<int, queue<vector<int>>>( q_clock,
                                                       queue<vector<int>>() ) );
        }

        // Make the vector of TO and FROM labels:
        addTo.clear();
        addTo.push_back( *link );
        addTo.push_back( q.front()[0] );

        // Add the vector to the queue at the q_cycle:
        cycle[ q_clock ].push( addTo );

      } // end for each link


    } // end else -- if not busy or not dispatched

    // update the network
    network_[ q.front()[0] ] = n;

    q.pop();

  } // end while queue not empty

  // This cycle's queue is now empty.
  // Recurse until all nodes are dispatched:
  if( dispatched.size() != number_of_nodes_ ){
    global_clock_ ++;
    Dispatch( cycle, dispatched );
  }

}// end Dispatch function



/*********************************************************************
 * Function to 'toString' the network configuration.
**/
string Simulate::ToStringNetwork(string label) {

  string formatted_line = "\n" + string(80,'_') + "\n\n";
  string dotted_line = string(80,'.') + "\n\n";


  string s = formatted_line + label + "\n" + dotted_line;

  s += "NODECOUNT: " + Utils::Format(number_of_nodes_, 4) + "\n";
  map<int, Node>::iterator it;
  for (it = network_.begin(); it != network_.end(); ++it)
    s += (it->second).ToString() + "\n";

  s += formatted_line;

  return s;
}

