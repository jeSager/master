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
    waiting_list_.push_back( node.GetNodeLabel() );
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

  // This map holds queues by cycle:
  map<int, queue<vector<int>>> cycle;

  // The next queue is a list of associated "TO" and "FROM" nodes.
  queue<vector<int>> next;

  // Vector for node zero
  vector<int> zero;

  // Node zero comes from -1)
  int from = -1;
  network_iter_ = network_.begin();
  zero.push_back( network_iter_ -> first );
  zero.push_back(from);

  // add the vector to the queue
  next.push( zero );

  // add the queue to the cycle map
  cycle[ global_clock_ ] = next;

  // Start recursion from zero
  QueueDispatch( cycle );

  cout << "Leave RunSimulation" << endl;

}



void Simulate::QueueDispatch( map<int, queue<vector<int>>> cycle ){

  // Iterator to search the cycle map:
  map<int, queue<vector<int>>>::iterator cycle_iter;

  // A vector to be added to the queue:
  vector<int> addTo;

  // Queue nodes to a specific clock cycle:
  int queue_clock;

  // The current node:
  Node n;

  // The current links:
  vector<int> links;

  // The current queue:
  queue<vector<int>> current_q = cycle[ global_clock_ ];


  // Run this cycle's queue until empty:
  while( !current_q.empty() ){

    // The first link has a queue at the next cycle:
    queue_clock = global_clock_ + 1;

    // The current node in this queue and it's links:
    n = network_[ current_q.front()[0] ];
    links = n.GetLinkLabels();

    for( vector<int>::iterator it = waiting_list_.begin();
                                             it != waiting_list_.end(); ++it ){

      // If the node has not received, do ...
      if( (*it) == current_q.front()[0] ){

        // Remove the node from the waiting list:
        waiting_list_.erase(it);

        // Dispatch the node, if it's not complete:
        n.SetMessageAtTime( global_clock_, current_q.front()[1] );
        network_[n.GetNodeLabel()] = n;

        for( vector<int>::iterator link = links.begin();
                                                 link != links.end(); ++link ){

          // If there isn't a queue for the clock cycle, create one:
          cycle_iter = cycle.find( queue_clock );
          if( cycle_iter == cycle.end()){
            cycle.insert( pair<int, queue<vector<int>>>(
                                         queue_clock, queue<vector<int>>() ) );
          }

          // Make the vector of TO and FROM labels:
          addTo.clear();
          addTo.push_back( *link);
          addTo.push_back( current_q.front()[0] );

          // Add the vector to the queue at this cycle:
          cycle[ queue_clock ].push( addTo );
            cout << " added " << (*link) << " to map for clock " << queue_clock << endl;

          // Attach more links to subsequent cycles:
          queue_clock ++;
        } // end for
      } // end if
    } // end for
    current_q.pop();
  } // end while

  if( ! waiting_list_.empty()){
    // Set the global clock:
    global_clock_ ++;
    QueueDispatch( cycle );
  }
  else
    cout << "empty" << endl;

}


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

