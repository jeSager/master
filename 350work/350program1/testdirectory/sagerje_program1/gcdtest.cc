#include "gcdtest.h"

/******************************************************************************
 *3456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
 * Class 'GCDTest' for testing gcd algorithms.
 *
 * Author: Duncan A. Buell
 * Date last modified: 20 August 2016
 *
 * Modified by:  James Sager
 * Date:  9 September 2016
 *
 * Description:
 *   This file preforms a test on the two functions GcdNative and GcdSubtract
 *   to test the abilities of subtraction over division.
**/

/******************************************************************************
 * Constructor
**/
GCDTest::GCDTest() {
}

/******************************************************************************
 * Destructor
**/
GCDTest::~GCDTest() {
}

/******************************************************************************
 * General functions.
**/


/******************************************************************************
 * Function to create the numbers to be tested.
 *
 * Modifications:
 *   * if random longs a and b are not equal, a is larger.
 *   * lower limit was set more appropriately for being a denominator
**/
void GCDTest::CreateNumbers(LONG how_many_tests, LONG max_test_number_size)
{
  cout << "create " << how_many_tests << " records" << endl;

  MyRandom myrandom;
  LONG upperlimit = max_test_number_size;
  for (int i = 0; i < how_many_tests; ++i) {
    LONG a = myrandom.RandomUniformInt(1, upperlimit);
    LONG b = myrandom.RandomUniformInt(1, upperlimit);
    // if( a != b ) veca_ is larger and vecb_ is smaller
    veca_.push_back( ( a >= b ) ? a : b );
    vecb_.push_back( ( a >= b ) ? b : a );
  }

  cout << "done with creation of " << how_many_tests << " records" << endl;
}

/******************************************************************************
* Function to format a progress line.
**/
string GCDTest::FormatProgress(LONG sub, LONG a, LONG b,
                               LONG g, LONG g3)
{
  string s = "";
  s += Utils::Format(sub, 11) + " ";
  s += Utils::Format(a, 11) + " ";
  s += Utils::Format(b, 11) + " ";
  s += Utils::Format(g, 8) + " ";
  s += Utils::Format(g3, 8);

  if ((g > 0) && (g3 > 0) && (g != g3)) {
    s += " GCDS NOT EQUAL";
  }
  return s;
}

/*********************************************************************
 * Naive gcd
 *   Argments:  Longs larger and smaller
 *   Returns:   The gcd for comparison against the subtraction algorithm
 *              below
 * This function continues to divide until the gcd of larger and
 * smaller are found.  The count variable is incramented accordingly.
**/
LONG GCDTest::GcdNaive(LONG larger, LONG smaller) {

  LONG remainder = larger;
  while( remainder != 0 ) {
    remainder = larger % smaller;
    larger = smaller;
    smaller = remainder;
    count_divisions_naive_++;
  }
  return remainder;
}


/*********************************************************************
 * Subtract three times gcd
 *   Arguments:  Longs larger and smaller
 *   Returns:  the gcd for comparison against the naive algorithm
 *
 * The naive GCD alogrithm is applied in conjunction with a
 * subtraction-based modulus alogrithm for comparison against the
 * Naive gcd function above.
 *
 * class variables:  count_subtractions_ and count_subtraction_divisions_
 *   * Are not reset within this function
 *   * Are incramented appropriately according to their names
 *   * NOTE:  the divisions are decramented by one if subtraction fails.
 *
 * twice:  This long is used because the comparison will be done
 *         at least once.
 *
**/
LONG GCDTest::GcdSubtract(LONG larger, LONG smaller) {

  LONG remainder = larger;
  LONG twice;     //twice: as in subtracted smaller twice from larger

  while( remainder != 0 ){

    twice = larger - smaller - smaller;
    count_subtractions_ = count_subtractions_ + 2;
    count_divisions_subtract_ ++;

    if( twice < 0 ){
      count_subtractions_ = count_subtractions_ + 1;
      remainder = larger - smaller;
    }
    else if( (twice - smaller) < 0 ){
      count_subtractions_ = count_subtractions_ + 1;
      remainder = twice;
    }
    else if( (twice - smaller - smaller) < 0){
      count_subtractions_ = count_subtractions_ + 3;
      remainder = twice - smaller;
    }
    else{
      remainder = larger % smaller;
      count_divisions_subtract_--;
    }

    larger = smaller;
    smaller = remainder;
  }
  return remainder;

}
/*********************************************************************
 * Run the tests
 *
 *  Uses the funtion TimeCall in the Utils class to ouput cpu and
 *  memory information for the tests developed within this class.
**/
void GCDTest::RunTheTests()
{
  double timenew;
  string timestring;

  // test naive
  timestring = Utils::TimeCall("bef naive false", timenew);
  cout << timestring << endl;
  TestNaive(false);
  timestring = Utils::TimeCall("aft naive false", timenew);
  cout << timestring << endl;

  // test subtract
  timestring = Utils::TimeCall("bef subtract false", timenew);
  cout << timestring << endl;
  TestSubtract(false);
  timestring = Utils::TimeCall("aft subtract false", timenew);
  cout << timestring << endl;

  // test naive with the secondary test
  timestring = Utils::TimeCall("bef naive true", timenew);
  cout << timestring << endl;
  TestNaive(true);
  timestring = Utils::TimeCall("aft naive true", timenew);
  cout << timestring << endl;

  // test subtract with the secondary test
  timestring = Utils::TimeCall("bef subtract true", timenew);
  cout << timestring << endl;
  TestSubtract(true);
  timestring = Utils::TimeCall("aft subtract true", timenew);
  cout << timestring << endl;

  // test naive against subtract
  timestring = Utils::TimeCall("bef n-sub false", timenew);
  cout << timestring << endl;
  TestNaiveSubtract();
  timestring = Utils::TimeCall("aft n-sub false", timenew);
  cout << timestring << endl;

  cout << "done with the computation" << endl;
}

/*********************************************************************
* Test the naive against the subtraction
*
* This function will output errors if discrepancies exist between
* the functions naive and subtraction.
*
* Otherwise, it reaffirms they have consistant results.
**/
void GCDTest::TestNaiveSubtract() {
  LONG a, b, g, g3;
  count_divisions_naive_ = 0;
  count_subtractions_ = 0;
  count_divisions_subtract_ = 0;

  for (UINT i = 0; i < veca_.size(); ++i) {
    a = veca_.at(i);
    b = vecb_.at(i);
    g = this->GcdNaive(a, b);
    g3 = this->GcdSubtract(a, b);

    if (g != g3) {
      cout << "ERROR N-SUB " << a << " " << b << " naive: " << g
      << "   sub: " << g3 << endl;
    }
  }
  cout << "Test naive against subtract shows no discrepancies" << endl;
}

/*********************************************************************
 * Test naive
 *   argument:  boolean check_result prints a result if true
 *
 * This function is used by the run the tests function.  It resets
 * test conditions.
 *
 * Long count_divisions_ is reset to zero
**/
void GCDTest::TestNaive(bool check_result) {

  count_divisions_naive_ = 0;

  for (UINT i = 0; i < veca_.size(); ++i)
    this->GcdNaive( veca_.at(i), vecb_.at(i) );

  if( check_result )
    cout << "Number of naive divisions " << count_divisions_naive_ << endl;
}


/*********************************************************************
 * Test subtract
 *   argument:  boolean check_result prints a result if true
 *
 * This function is used by the run the tests function.  It resets
 * test conditions.
 *
 * Long count_subtractions_ and countdivisions_subtract are reset to zero
**/
void GCDTest::TestSubtract(bool check_result) {

  count_subtractions_ = 0;
  count_divisions_subtract_ = 0;

  for (UINT i = 0; i < veca_.size(); ++i)
    this->GcdSubtract( veca_.at(i), vecb_.at(i) );

  if( check_result ){
    cout << "Number of subtractions and divisions " << count_subtractions_
    << " " << count_divisions_subtract_ << endl;
  }
}

