// Elvira P. Manlulu
// CMSC 23 UV-4L
// Exercise 1
// Created : Jan 28, 2026
// Updated : March 28, 2026
// https://github.com/epmlvm/cmsc23.git

import 'dart:io';

String rotateLeft(String word) {           //rotate the letter of a word
  if (word.length <= 1) return word;       // Takes index 1 to end + index 0
  return word.substring(1) + word[0];
}

String compareWords(String cleanedWord2,List<String> wordList){  
  return wordList.contains(cleanedWord2)
    ? 'The given strings are rotations of each other'
    : 'The given strings are not rotations of each other';
}

void main() {

  stdout.write('Enter the first word: ');
  String? input1 = stdin.readLineSync();

  stdout.write('Enter the second word: ');
  String? input2 = stdin.readLineSync();

  // defined words initially  
  // String word1 = input1;
  // String word2 = input2;
  String word1 = input1 ?? ''; // If input1 is null, use an empty string
  String word2 = input2 ?? ''; // If input2 is null, use an empty string

  // Clean Words
  // String cleanedWord1 = word1.replaceAll(RegExp(r'\s+'), '');
  // String cleanedWord2 = word2.replaceAll(RegExp(r'\s+'), '');
  String cleanedWord1 = word1.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');
  String cleanedWord2 = word2.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');

  // Rotation Check
  bool isRotation = (cleanedWord1.length == cleanedWord2.length) && (cleanedWord1 + cleanedWord1).contains(cleanedWord2);
  print('Rotation check : $isRotation');
  
  List<String> wordList = [];                 // building the list of words
  int word1Length = cleanedWord1.length;
  
  wordList.add(cleanedWord1);                 // get word1 and put on the list
  String currentWord = cleanedWord1;
  
  for ( var i=1; i < word1Length; i++) {
    currentWord = rotateLeft(currentWord);   // rotate each letter and put the new word in a list of words
	  wordList.add(currentWord);
  }
   
  print(compareWords(cleanedWord2,wordList));

}


