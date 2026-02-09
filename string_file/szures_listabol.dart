

void main(){
  List<String> mostCommonEnglishWords = [
"the", "be", "to", "of", "and", "a", "in", "that", "have", "I",
"it", "for", "not", "on", "with", "he", "as", "you", "do", "at",
"this", "but", "his", "by", "from", "they", "we", "say", "her", "she",
"or", "an", "will", "my", "one", "all", "would", "there", "their", "is",
"are", "was", "were", "been", "has", "had", "can", "could", "should" ];

String szavak = mostCommonEnglishWords.where((szo) => szo.length > 5 ).toString();
print(szavak);
}
