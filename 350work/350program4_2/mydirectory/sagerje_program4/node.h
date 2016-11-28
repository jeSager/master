/****************************************************************
 * Header file for the node class
 *
 * Author/copyright:  Duncan Buell
 * Used with permission and modified by: Jane Random Hacker
 * Date: 4 November 2016
 *
**/

#ifndef NODE_H
#define NODE_H

#include <iostream>
#include <vector>
#include <queue>
using namespace std;

#include "../../Utilities/scanner.h"
#include "../../Utilities/scanline.h"

class Node {
public:
 Node();
 virtual ~Node();

 static const int kDummyTime = 99999999; // dummy time is infinitely in the future
 static const int kDummyLabel = 99999999;

 vector<int> GetLinkLabels();
 int GetNodeLabel();
 int GotMessageAtTime();
 int GotMessageFrom();
 void SetMessageAtTime(int when, int from_whom);
 void ParseInputLine(string line);
 string ToString() const;
 void SetQueued();
 bool IsNotQueued();

private:
 int time_got_message_;
 int got_message_from_node_;
 int node_label_;
 bool queued_=false;
 vector<int> links_;

};

#endif
