// Elvira P. Manlulu
// CMSC 23 UV-4L
// Exercise 1
// Jan 28, 2026
// https://github.com/epmlvm/cmsc23.git


List<String> wordList = [];

String rotateLeft(String word) {           //rotate the letter of a word
  if (word.length <= 1) return word;       // Takes index 1 to end + index 0
  return word.substring(1) + word[0];
}

String CompareWords(String cleanedWord2,List<String> wordList){     //compare word1 with word2
  
  if (wordList.contains(cleanedWord2)){ // Returns true if exists.
    return 'The given strings are rotations of each other';
    }
  else{
    return 'The given strings are not rotations of each other';
  }  
}

void main() {
  
  var i;
  String word1 = 'rotation';                  //Input:
  String word2 = 'tationro';
  
  int word1Length = word1.length;
  
  wordList.add(word1);                        // get word1 and put on the list
  
  String currentWord = word1;
  
  for (i=1; word1Length-1; i++) {
    String rotatedWord = rotateLeft(currentWord);   // rotate each letter and put the new word in a list of words
	wordList.add(rotatedWord);
  }
   
  // drop the spaces and special characters in word2
  String cleanedWord2 = word2.replaceAll(RegExp(r'\s+'), '');
  
  print(CompareWords(cleanedWord2,wordList));

}


