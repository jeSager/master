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
  vector<int> links;
  Node one_link;


  while (in_file.HasNext()) {
    string line = in_file.NextLine();
    Node node;
    node.ParseInputLine(line);
    network_[node.GetNodeLabel()] = node;
    links = node.GetLinkLabels();
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

  // Get node 0
  // Node zero comes from -1)
  int from = -1;
  network_iter_ = network_.begin();
  vector<int> zero;
  zero.push_back( network_iter_ -> first );
  zero.push_back(from);

  next.push( zero );

  cycle[ global_clock_ ] = next;

  // Start recursion from zero
  QueueDispatch( cycle );

  cout << "Leave RunSimulation" << endl;

}



void Simulate::QueueDispatch( map<int, queue<vector<int>>> cycle ){

  // To iterate the cycle map:
  map<int, queue<vector<int>>>::iterator cycle_iter;

  // A Vector to be added to the queue:
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

    // Each array has a queue at the next cycle
    queue_clock = global_clock_ + 1;

    // The current node and it's links:
    n = network_[ current_q.front()[0] ];
    links = n.GetLinkLabels();

//    cout << "SMT for Node: " << n.GetNodeLabel() << "\t Clock: ";
//    cout << global_clock_ << "\t From: " << current_q.front()[1] << endl;
    // Dispatch the node:
    n.SetMessageAtTime( global_clock_, current_q.front()[1] );
    network_[n.GetNodeLabel()] = n;


    for( vector<int>::iterator link = links.begin();
                                                 link != links.end(); ++link ){

      // If there isn't a queue for the clock cycle, create one:
      cycle_iter = cycle.find( queue_clock );
      if( cycle_iter == cycle.end())
        cycle.insert( pair<int, queue<vector<int>>>(
                                         queue_clock, queue<vector<int>>() ) );


      // Make the vector of TO and FROM labels:
      addTo.clear();
      addTo.push_back( *link);
      addTo.push_back( current_q.front()[0] );

      // Add the vector to the queue at this cycle:
      cycle[ queue_clock ].push( addTo );

      // Attach more links to subsequent cycles:
      queue_clock ++;

    } // end for

    current_q.pop();
  } // end while

  // Set the global clock:
  global_clock_ ++;

  count_ ++;
  if( count_ != number_of_nodes_)  QueueDispatch( cycle );


}






//  // The clock used for the queue
//  int queue_clock = clock;
//
//  // The current links:
//  vector<int> links = network_[ current ].GetLinkLabels();
//
//  // Queue the current node on the current clock cycle
//  cycle_queue_[clock].push( current );
//
//  cout << "Node " << current << " is queued on cycle " << queue_clock << endl;
//
//  // The loop below will prequeue for the next cycles.
//  for( vector<int>::iterator link = links.begin();
//                                                 link != links.end(); ++link ){
//    network_iter_ = disposable_net_.find( *links );
//    if( network_iter_ != disposable_net_.end){
//      // Each link is queued on a subsequent cycle
//      queue_clock ++;
//      cycle_queue_[ queue_clock ].push( *link );
//      cout << "Node " << (*link) << " is queued on cycle " << queue_clock << endl;
//    }
//  }
//
//  disposable_net_[ (*link) ].SetMessageAtTime(clock_, current);
//  disposable_net_.erase( current );


  // for each cycle, queue the next


//  int queue_clock = clock;
//  bool queued;
//
//
//  queued_list_.push_back( queue_node );
//  number_of_nodes_queued ++;
//
//  done_ = ( number_of_nodes_ == number_of_nodes_queued );
//
//  // First, get the node for the label passed:
//  Node node = network_[ queue_node ];
//
//  // get the links
//  vector<string> link_labels = node.GetLinkLabels();
//
//  // The loop below will prequeue for the next cycles.
//  for( vector<string>::iterator label = link_labels.begin();
//                             (!done_) && label != link_labels.end(); ++label ){
//
//    // The node defined by the label will be added to the "next cycle's" queue.
//    // The "next cycle" to be defined by the for loop as:
//    queued = false;
//    for( vector<string>::iterator q_label = queued_list_.begin();
//                       (!queued) && q_label != queued_list_.end(); ++q_label ){
//      if( (*label) == (*q_label) ) queued = true;
//    }
//
//    if( ! queued ){
//      queue_clock ++;
//
//      // If a queue doesn't exist for that clock cycle, we create it.
//      cycle_queue_iter_ = cycle_queue_.find( queue_clock );
//      if( cycle_queue_iter_ == cycle_queue_.end() )
//        cycle_queue_.insert(pair<int, queue<string>>(queue_clock,queue<string>()));
//      cycle_queue_[queue_clock].push(*label);
//
//
////      // output
////      cout << "\t\tORIGIN: " << queue_node;
////      cout << "\t\tQUEUED: " << (*label);
////      cout << "\t\tTO CYCLE: " << queue_clock << endl;
//
//
//     } // if( ! queued)
//     else
//       cout << (*label) << " was already queued." << endl;
//
//  }// for each link
//  // output
//  cout << "STARTING RECURSION FOR NODE: " << queue_node << endl;
//
//  for( vector<string>::iterator label = link_labels.begin();
//                                           label != link_labels.end(); ++label ){
//    for( vector<string>::iterator q_label = queued_list_.begin();
//                       (!queued) && q_label != queued_list_.end(); ++q_label )
//      if( (*label) == (*q_label) ) queued = true;
//    if( ! queued ) QueueFrom( (*label), queue_node, queue_clock );
//  }


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

