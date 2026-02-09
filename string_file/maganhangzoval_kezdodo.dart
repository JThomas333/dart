
void main(){
List<String> mostCommonEnglishWords = [
"the", "be", "to", "of", "and", "a", "in", "that", "have", "I",
"it", "for", "not", "on", "with", "he", "as", "you", "do", "at",
"this", "but", "his", "by", "from", "they", "we", "say", "her", "she",
"or", "an", "will", "my", "one", "all", "would", "there", "their", "is",
"are", "was", "were", "been", "has", "had", "can", "could", "should" ];


RegExp maganhangzo = RegExp(r'[aeiouáéíóöőúüűAEIOUÁÉÍÓÖŐÚÜŰ]');
String szavak = mostCommonEnglishWords.where((sz) => maganhangzo.hasMatch(sz[0].toString())).toString();
print(szavak);


}