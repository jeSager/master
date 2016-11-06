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

 //Constructor and Destructor
 Node(int which);
 virtual ~Node();

 //Accessors
 int GetNodeNumber() const;
 vector<int> GetChildSubs() const;
 bool IsNotVisited() const;
 bool IsOrphan() const;

 //Mutators
 void AddChildSub(int which);
 void SetIsOrphan(bool what);
 void SetAsVisited();

 //General
 string ToString() const;

private:
 //Variables

 int kDummyNodeNumber = -99;
 int node_number_ = kDummyNodeNumber;
 vector<int> child_subs_;
 bool visted_ = false;
 bool orphan_ = true;

};

#endif
