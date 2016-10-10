/****************************************************************
 * Header file for the gcd test.
 *
 * Author/copyright:  Duncan Buell
 * Date: 20 August 2016
 *
 * Modified by:  James Sager
 * Date:  6 September 2016
**/

#ifndef GCDTEST_H
#define GCDTEST_H

#include <iostream>
#include <vector>
using namespace std;

#include "../../Utilities/scanner.h"
#include "../../Utilities/scanline.h"

#include "myrandom.h"

class GCDTest {
public:

 GCDTest();
 virtual ~GCDTest();
 void CreateNumbers(LONG how_many_tests, LONG max_test_number_size);
 void RunTheTests();
 string stringifyBitLengthFreqs();
 string stringifyShiftFracFreqs();

private:

 LONG count_divisions_naive_=0;
 LONG count_divisions_subtract_=0;
 LONG count_subtractions_=0;

 string FormatProgress(LONG sub, LONG a, LONG b, LONG g, LONG g3);
 LONG GcdNaive(LONG longer, LONG shorter);
 LONG GcdSubtract(LONG longer, LONG shorter);

 //veca_ will be the max of a and b
 vector<LONG> veca_;
 vector<LONG> vecb_;

 void TestNaive(bool check_result);
 void TestNaiveSubtract();
 void TestSubtract(bool check_result);

};

#endif
