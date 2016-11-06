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


class GraphCode {
public:
 // Public Functions

 // Constructor and Destructor
 GraphCode();
 virtual ~GraphCode();

 // General Functions
 void ReadGraph(Scanner& in_stream);
 void DoTopoSort(ofstream& out_stream);
 void RecursiveDFS(Node& in, vector<Node>& g, ofstream& out);

 string ToString()const;


private:

 // Private Variables
 vector<Node> the_graph_;
 stack<Node> node_stack_;

 // Private Functions
 string ToStringPath(string blanks) const;
};

#endif
