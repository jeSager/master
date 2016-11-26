/****************************************************************
 * Header file for the network simulation
 *
 * Author/copyright:  Duncan Buell
 * Used with permission and modified by: Jane Random Hacker
 * Date: 4 November 2016
 *
**/

#ifndef SIMULATE_H
#define SIMULATE_H

#include <iostream>
#include <map>
#include <queue>
using namespace std;

#include "../../Utilities/scanner.h"
#include "../../Utilities/scanline.h"

#include "node.h"

class Simulate {
public:
 Simulate();
 virtual ~Simulate();

 void ReadNetwork( Scanner& in_file );
 void RunSimulation();
 void QueueDispatch( map< int, queue<vector<int>>> cycle );
 string ToStringNetwork( string label );

private:
 int number_of_nodes_ = 0;
 vector<int> waiting_list_;
 map<int, Node> network_;
 map<int, Node>::iterator network_iter_;
 int global_clock_ = 0;
 bool done_ = false;

};

#endif
