#include "smatch.h"
/******************************************************************************
 *3456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
 * Class 'SMatch' for testing gcd algorithms.
 *
 * Author: Duncan A. Buell
 * Date last modified: 20 August 2016
 *
 * Modified by:  James Sager
 * Date: 6 October 2016
 *
**/

/******************************************************************************
 * Constructor
**/
SMatch::SMatch() {
}

/******************************************************************************
 * Destructor
**/
SMatch::~SMatch() {
}

/******************************************************************************
 * General functions.
**/
/******************************************************************************
 * Function to find matches of patterns in the text.
**/
void SMatch::FindMatches() {
  NaiveMatch();
  IndexedMatch();
}


/******************************************************************************
 * Function that completes a naive string matching algorithm.
 *
 * NAIVE STRING MATCHING ALGORITHM:
 *
 * For each pattern, loop the entire text
 *    # Match is true if the text char is equal to the first pattern char
 *       * Start a loop that increments the pattern
 *          - For the loop to be entered / complete, match must remain true
 *          - This loop is started at one
 *             + Only counting EXTRA comparisons
 *       * If Match is still true, we accept it
 *         - The location is pushed to the data location vector
 *    # Add the total comparisons to the data
 *
 **/
void SMatch::NaiveMatch() {

  string text=ToStringText();            // the text file ( argument )
  int comparisons;                       // a count of char comparisons
  bool match;                            // must remain true
  vector<int> pattern_locations;         // to be added to naive_match_locations


  // For each pattern ... ( pattern iterator: pit )
  for(vector<string>::iterator pit = the_patterns_.begin();
                                            pit != the_patterns_.end(); ++pit) {
    // Reset the comparisons value and the vector
    comparisons = 0;
    pattern_locations.clear();

    // Loop the entire text
    for( unsigned int i = 0; i < text.size(); i++ ) {

        // Match is true if there's a match at position zero
        match = (*pit)[0] == text[i];

        // The next loop is only entered if match is true
        // The next loop will only complete if match stays true

        for( unsigned int j = 1; j < (*pit).size() && match; j++ ) {
          match = (*pit)[j] == text[ i + j ];
          comparisons++;
        }

        // Record the match, if it exists
        if( match ) pattern_locations.push_back( i );

    }// end loop the text

    naive_match_comparisons_.push_back( comparisons );
    naive_match_locations_.push_back( pattern_locations );
  }// end loop the pattern
}



/******************************************************************************
 * Function to complete a simple character index algorithm using frequencies.
 *
 * 1. CREATE AN CHARACTER INDEX
 *    # Loop through the text
 *      * Create an index by character:
 *        - each character is defined as a map key
 *        - each map key has an associated location vector
 *
 * 2. FIND MATCHES
 *    # Loop through the patterns
 *      * Loop through each pattern by character
 *        - find the least frequent character in the pattern
 *        - name the associated vector in the index "locations"
 *            (meaning locations for the least frequent char)
 *      * Loop through the location vector
 *        - use the variables "before" and "size" to create a test string
 *          from the text
**/
void SMatch::IndexedMatch() {

  // variables used in the indexing loop

  // an iterator and a map
  // the map key is the character, the vector values list locations
  map<int, vector<int>> text_lookup;
  map<int, vector<int>>::iterator text_lookup_iter;
  // oneChar is a character at a location, comparisons is the count
  int oneChar, comparisons;
  string text = ToStringText();
  bool match;


  // variables used in the matching loop

  int before, size, freq, min, ascii, another, testLoc;
  string str;
  // this output data vector is pushed to a vector of vectors in the header
  vector<int> pattern_locations;
  // the is the vector of locations for the least frequent character
  vector<int> locations;




  // this is the loop that indexes the text file
  for(unsigned int i=0; i < text.size();i++){
    oneChar=text.at(i);
    text_lookup_iter=text_lookup.find(oneChar);
    if(text_lookup_iter == text_lookup.end())
      text_lookup.insert(pair<int,vector<int>>(oneChar,vector<int>()));
    text_lookup[oneChar].push_back(i);
  }

  //this loop finds the least frequent char in the pattern for comparison
  for(vector<string>::iterator pit = the_patterns_.begin();
                                          pit != the_patterns_.end(); ++pit) {

    // reset these values for each pattern
    pattern_locations.clear();
    comparisons=0;
    freq = INT_MAX;
    min = INT_MAX;
    before=0;
    size=0;

    // associate a vector of locations by finding the least frequent character
    // ... in the pattern
    for( unsigned int i = 0; i < ( *pit ).size(); i++ ) {
      str=(*pit)[i];
      another=str.at(0);
      freq = the_frequency_.find( str ) -> second;
      if( another == 0 || another == 32 )
        freq = INT_MAX;
      if( freq < min ){
        min = freq;
        ascii = str.at(0);
        before = i;
        size = (*pit).size();
      }
    }

    locations = text_lookup.find(ascii) -> second;

    // this loop iterates the location vector of the least frequent character
    // ... in the pattern and finds matches
    for(vector<int>::iterator it = locations.begin();
                                                it != locations.end(); ++it) {
    testLoc = (*it)-before;
    match = true;
    for( int i = 0; i < size && match; i++) {
      match = ( (*pit)[i] == text[testLoc + i] );
      comparisons ++;
    }

    // matches are stored in pattern_locations
    if( match ) pattern_locations.push_back( testLoc );

    }// end of the location vector loop

    // store the output in the header variables
    index_match_comparisons_.push_back( comparisons );
    index_match_locations_.push_back( pattern_locations );

  }// end of the pattern loop

}


/******************************************************************************
 * Function to read the frequency.
 *
 * The string 'match' is used to hold the character
 * The int 'freq' holds the frequency that was initially recored as
 *   'freq_string'
 * The e_acute at the bottom of the Dickens frequency is skipped
 *
 * The map 'the_frequency_' holds the character and its frequency
 *
**/
void SMatch::ReadFrequency(Scanner& in_scanner) {

  // one_char is the character that is being used, input is the file line input
  string freq_string, one_char, input;
  int freq;

  // match is just the character value pulled from the line
  string match = "";
  bool is_not_space;

  // skipping the e_acute character
  int e_acute = 45;
  for( int line = 0; (( line < e_acute ) && in_scanner.HasNext()); line ++ ) {
    input = in_scanner.NextLine();
    match = "";
    freq_string = "";
    for( unsigned int i = 0; i < input.size(); i++ ) {
      one_char = input.substr( i, 1);
      is_not_space = one_char.compare( " " ) != 0;
      if( match == "" && is_not_space )
        match = one_char;
      else if( match != "" && is_not_space )
        freq_string += one_char;
    }

    // frequency is an int
    freq = stoi( freq_string );

    // use the map variable from the header
    the_frequency_[ match ] = freq;
  }
}


/******************************************************************************
 * Function to read the patterns.
**/
void SMatch::ReadPatterns(Scanner& in_scanner) {
  while (in_scanner.HasNext()) {
    string input = in_scanner.NextLine();
    the_patterns_.push_back(input);
  }
}


/******************************************************************************
 * Function to read the text.
**/
void SMatch::ReadText(Scanner& in_scanner) {
  while (in_scanner.HasNext()) {
    string input = in_scanner.NextLine();
    the_text_.push_back(input);
  }
}


/******************************************************************************
 * Function to 'ToString' the 'vector' of patterns.
**/
string SMatch::ToStringPatterns() {
  string s = "";

  for(vector<string>::iterator it = the_patterns_.begin();
                                            it != the_patterns_.end(); ++it) {
    s += (*it) + "\n";
  }
  return s;
}


/******************************************************************************
 * Function to 'ToString' the 'vector' of text.
**/
string SMatch::ToStringText() {
  string s = "";
  for(vector<string>::iterator it = the_text_.begin();
                                                it != the_text_.end(); ++it) {
    s += " " + (*it);
  }
  return s;
}


/******************************************************************************
 * Function to 'ToString' the data.
 * Data structure variables of the header file are dumped into a string
 * for output.
 *
 * This function is called in main.
 *
**/
string SMatch::ToStringData() {

  string s = "";                           // the string output
  string line = "";                        // a line for numbers
  int numPerLine;                          // the number of numbers on the line

  // the values used for 'n' in the algorithms
  int n_naive=ToStringText().size();
  int n_indexed=n_naive/the_patterns_.size();

  string double_space = string(2,'\n');
  string dotted_line = string(70,'.') + "\n";
  string formatted_line = string(70,'_') + "\n";

  s += double_space;

  // error checking for the blind
  if( naive_match_locations_ != index_match_locations_ )
    for( unsigned int i = 0; i < INT_MAX; i++ )
      s += "THERE IS SOMETHING WRONG HERE";
  else
      s += "THE MATCH LOCATION VECTORS ARE EQUAL";


  for(vector<vector<int>>::iterator vit = naive_match_locations_.begin();
                                   vit != naive_match_locations_.end(); ++vit) {

  s += double_space + formatted_line;
  s += "\nPATTERN: " + Utils::Format( "'"+the_patterns_.front(), 60 ) + "'\n";
  s += dotted_line;
  s += "COMPARISONS" + Utils::Format("N",17) + Utils::Format("EXTRA",21);
  s += Utils::Format("TOTAL",21) + "\n";
  s += "NAIVE      " + Utils::Format(n_naive,17);
  s += Utils::Format(naive_match_comparisons_.front(),21);
  s += Utils::Format(n_naive + naive_match_comparisons_.front(),21) + "\n";
  s += "INDEXED    " + Utils::Format(n_indexed,17);
  s += Utils::Format(index_match_comparisons_.front(),21);
  s += Utils::Format(n_indexed + index_match_comparisons_.front(),21) + "\n";
  s += dotted_line;
  s += "LOCATION(s):\n";
  the_patterns_.erase(the_patterns_.begin());
  naive_match_comparisons_.erase(naive_match_comparisons_.begin());
  index_match_comparisons_.erase(index_match_comparisons_.begin());

    for(vector <int>::iterator lit = (*vit).begin();
                                                   lit != (*vit).end(); ++lit) {
      line += Utils::Format( (*lit), 10);
      numPerLine++;
      if( numPerLine == 7){
        numPerLine=0;
        s += line + "\n";
        line = "";
      }
    }
    s += line + "\n";
    line = "";
    numPerLine = 0;
  }
  return s;
}

