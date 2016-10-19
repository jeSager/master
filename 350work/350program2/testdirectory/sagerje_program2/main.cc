#include "main.h"

/****************************************************************
 * Main program for Homework 1.
 *
 * Author/copyright:  Duncan Buell. All rights reserved.
 * Date: 20 August 2016
 *
 * Modified by:  James Sager
 * Date: 6 October 2016
 *
**/

static const string kTag = "MAIN: ";

/*********************************************************************
**/
int main(int argc, char *argv[]) {
  double timenew = 0.0;
  string data_filename = "";
  string pattern_filename = "";
  string frequency_filename = "";
  string timestring = "";

  Scanner in_scanner;

  SMatch stringmatch;

  Utils::CheckArgs(3, argc, argv, "datafilename patternfilename frequencyfilename");
  data_filename = static_cast<string>(argv[1]);
  pattern_filename = static_cast<string>(argv[2]);
  frequency_filename = static_cast<string>(argv[3]);

  cout << kTag << "Beginning execution\n";

  cout << kTag << "datafile  '" << data_filename << "'\n";

  timestring = Utils::TimeCall("beginning", timenew);
  cout << timestring << endl;

//  stringmatch.CreateDNA();
//  exit(0);

  in_scanner.OpenFile(data_filename);
  stringmatch.ReadText(in_scanner);
  in_scanner.Close();
#ifdef EBUG
  cout << stringmatch.ToStringText() << endl;
#endif

  in_scanner.OpenFile(pattern_filename);
  stringmatch.ReadPatterns(in_scanner);
  in_scanner.Close();
//  cout << stringmatch.ToStringPatterns() << endl;

  in_scanner.OpenFile(frequency_filename);
  stringmatch.ReadFrequency(in_scanner);
  in_scanner.Close();

  stringmatch.FindMatches();
  cout << stringmatch.ToStringData() << endl;

  cout << kTag << "Ending execution\n";

  timestring = Utils::TimeCall("ending", timenew);
  cout << timestring << endl;

  return 0;
}


