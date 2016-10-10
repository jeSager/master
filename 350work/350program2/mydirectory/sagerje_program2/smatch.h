/****************************************************************
 * Header file for the string matching test.
 *
 * Author/copyright:  Duncan Buell
 * Date: 20 August 2016
 *
 * Modified by:  James Sager
 * Date: 6 October 2016
 *
**/

#ifndef SMATCH_H
#define SMATCH_H

#include <iostream>
#include <vector>
#include <map>
#include <string>
#include <climits>
using namespace std;

#include "../../Utilities/scanner.h"
#include "../../Utilities/scanline.h"
#include "myrandom.h"

class SMatch {
public:
 SMatch();
 virtual ~SMatch();

 void FindMatches();
 void NaiveMatch();
 void IndexedMatch();

 void ReadPatterns(Scanner& in_scanner);
 void ReadText(Scanner& in_scanner);
 void ReadFrequency(Scanner& in_scanner);

 string ToStringText();
 string ToStringPatterns();
 string ToStringData();

private:
 vector<string> the_text_;
 vector<string> the_patterns_;
 map<string, int> the_frequency_;

 vector<vector<int>> naive_match_locations_;
 vector<vector<int>> index_match_locations_;
 vector<int> naive_match_comparisons_;
 vector<int> index_match_comparisons_;
};

#endif
