import 'dart:io';

void main(){
  print("Adj egy szót: ");
  String? szo = stdin.readLineSync();
  List<String> mostCommonEnglishWords = [
"the", "be", "to", "of", "and", "a", "in", "that", "have", "I",
"it", "for", "not", "on", "with", "he", "as", "you", "do", "at",
"this", "but", "his", "by", "from", "they", "we", "say", "her", "she",
"or", "an", "will", "my", "one", "all", "would", "there", "their", "is",
"are", "was", "were", "been", "has", "had", "can", "could", "should" ];

  if(mostCommonEnglishWords.contains(szo)){
    print("A megadott szó benne van a leggyakoribb angol szavak között.");
  } else {
    print("A megadott szó nincs benne a leggyakoribb angol szavak között.");
  }
}