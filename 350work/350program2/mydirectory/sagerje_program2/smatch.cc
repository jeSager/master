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
  ToStringData();

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
//    cout << "Starting:  "  << (*pit) << endl;

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

//    cout << "Total comparisons for: " << (*pit) << ":  " << comparisons << endl;
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
  //these values are used in the second loop
  int before, size, freq, min, ascii, another;
  string str;
  vector<int> pattern_locations;

  //these values are used in the fist loop
  map<int, vector<int>> text_lookup;
  map<int, vector<int>>::iterator text_lookup_iter;
  int oneChar;
  string text=ToStringText();
  bool match;
  int comparisons;


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

    pattern_locations.clear();
    comparisons=0;
    freq = INT_MAX;
    min = INT_MAX;
    before=0;
    size=0;

//    cout << endl;
//    cout << endl;
//    cout << "Starting \"" << (*pit) << "\"" << endl;

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

    int testLoc;
    string testString;
    vector<int> locations;
    locations=text_lookup.find(ascii) -> second;
// this loop iterates the index
    for(vector<int>::iterator it = locations.begin();
                                                it != locations.end(); ++it) {
    testLoc = (*it)-before;
    testString="";
    match = true;
    for( int i = 0; i < size && match; i++) {
      match = ( (*pit)[i] == text[testLoc + i] );
      comparisons ++;
    }
    if( match ) pattern_locations.push_back( testLoc );

    }//end of the index locations loop

    index_match_comparisons_.push_back( comparisons );
    index_match_locations_.push_back( pattern_locations );

  }//end of the pattern loop

}


/******************************************************************************
 * Function to read the frequency.
**/
void SMatch::ReadFrequency(Scanner& in_scanner) {

  string freq_string, one_char, input;
  int freq;
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
    freq = stoi( freq_string );
    the_frequency_[ match ] = freq;
//  Testing the map here
//      map<string, int>::iterator fit;
//      int aint;
//      string astr="a";
//      aint = the_frequency_.find( astr ) -> second;
//      cout << aint << endl;
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
 * Function to 'ToString' the 'vector' of data.
**/
string SMatch::ToStringData() {

  string double_space = string(2,'\n');
  string line = string(70,'_');
  string dotted_line = string(70,'.');
  int numPerLine;
  string s = "";
  int n_naive=ToStringText().size();
  int n_indexed=n_naive/the_patterns_.size();

  cout << double_space << endl;

  // error checking for the blind
  if( naive_match_locations_ != index_match_locations_ )
    for( unsigned int i = 0; i < INT_MAX; i++ )
      cout << "THERE IS SOMETHING WRONG HERE" << endl;
  else
      cout << "THE MATCH LOCATION VECTORS ARE EQUAL" << endl;


  for(vector<vector<int>>::iterator vit = naive_match_locations_.begin();
                                   vit != naive_match_locations_.end(); ++vit) {
  cout << double_space << endl;
  cout << line << endl;
  cout << "\nPATTERN: " << Utils::Format( "'"+the_patterns_.front(), 60 ) << "'" << endl;
  cout << dotted_line << endl;
  cout << endl;
  cout << "COMPARISONS" << Utils::Format("N",17) << Utils::Format("EXTRA",21) << Utils::Format("TOTAL",21) << endl;
  cout << "NAIVE      " << Utils::Format(n_naive,17) << Utils::Format(naive_match_comparisons_.front(),21) << Utils::Format(n_naive + naive_match_comparisons_.front(),21) << endl;
  cout << "INDEXED    " << Utils::Format(n_indexed,17) << Utils::Format(index_match_comparisons_.front(),21) <<  Utils::Format(n_indexed + index_match_comparisons_.front(),21) << endl;
  cout << dotted_line << endl;
  cout << endl;
  cout << "LOCATION(s):"<<endl;
  the_patterns_.erase(the_patterns_.begin());
  naive_match_comparisons_.erase(naive_match_comparisons_.begin());
  index_match_comparisons_.erase(index_match_comparisons_.begin());
    for(vector <int>::iterator lit = (*vit).begin();
                                                   lit != (*vit).end(); ++lit) {
      s += Utils::Format( (*lit), 10);
      numPerLine++;
      if( numPerLine == 7){
        numPerLine=0;
        cout << s << endl;
        s="";
      }
    }
    cout << s << endl;
    s="";
    numPerLine=0;
  }
  return s;
}

