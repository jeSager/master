/****************************************************************
 * Header file for the network simulation
 *
 * Author/copyright:  Duncan Buell
 * Used with permission and modified by: Jane Random Hacker
 * Date: 4 November 2016
 *
 * Modified by:     James Sager
 * Modified Date:   Tuesday,29 November 2016
**/

#ifndef SIMULATE_H
#define SIMULATE_H

#include <iostream>
#include <map>
#include <queue>
#include <stdlib.h>
#include <time.h>

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
 void Dispatch( map< int,queue<vector<int>>>& cycle, vector<int>& dispatched );
 bool IsBusy( Node n );
 string ToStringNetwork( string label );

private:
 unsigned int number_of_nodes_ = 0;
 map<int, Node> network_;
 map<int, Node>::iterator network_iter_;
 int global_clock_ = 0;
};

#endif
