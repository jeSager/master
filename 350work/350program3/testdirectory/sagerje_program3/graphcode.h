/****************************************************************
 * Homework 4 header file for the application class.
 *
 * Author/copyright:  Duncan Buell
 * Date: 13 July 2015
 *
 *
 * Modified by:  James Sager
 * Date:         Wed Oct 26 14:59:16 EDT 2016
 *
**/

#ifndef GRAPHCODE_H
#define GRAPHCODE_H

#include <iostream>
#include <vector>
#include <stack>
using namespace std;

#include "../../Utilities/utils.h"
#include "../../Utilities/scanner.h"
#include "../../Utilities/scanline.h"

#include "node.h"
#include "myrandom.h"

class GraphCode {
public:
 // Public Functions

 // Constructor and Destructor
 GraphCode();
 virtual ~GraphCode();

 // General Functions
 void CreateGraph(Scanner& in_stream);
 void ReadGraph(Scanner& in_stream);
 void DoTopoSort(ofstream& out_stream);
 stack<Node> Recurse(Node n, stack<Node> nodeStack);
 vector<Node> GetChildren(Node n);
 void Reset(ofstream& out);
 string ToString()const;
 // void DescendFrom(ofstream& out_stream, string blanks, Node node);


private:

 // Private Variables
 vector<string> path_;
 vector<Node> the_graph_;

 // Private Functions
 string ToStringChildren(string blanks, const vector<int>& children) const;
 string ToStringPath(string blanks) const;
};

#endif
