/****************************************************************
 * Header file for a node in a graph.
 *
 * Author/copyright:  Duncan Buell
 * Date: 7 May 2015
 *
 * Modified by;  James Sager
 * Date: Wed Oct 26 14:59:16 EDT 2016
 *
**/

#ifndef NODE_H
#define NODE_H

#include <iostream>
#include <vector>
using namespace std;

#include "../../Utilities/scanner.h"
#include "../../Utilities/scanline.h"

class Node {

public:
 //Functions

 //Constructors and Destructor
 Node();
 Node(int which);
 virtual ~Node();

 //Accessors
 int GetNodeNumber() const;
 int GetIncomingCount() const;
 int GetNumberOfChildren() const;
 bool HasNotBeenVisited() const;
 vector<int> GetChildSubs() const;

 //Mutators
 void AddChildSub(int which);
 void SetVisited(bool what);
 void IncrementIncoming();
 void DecrementIncoming();
 void SetNodeNumber(int which);

 //General
 string ToString() const;

private:
 //Variables

 int kDummyNodeNumber = -99;
 bool visited_ = false;
 int node_number_ = kDummyNodeNumber;
 int incoming_ = 0;
 vector<int> child_subs_;

};

#endif
