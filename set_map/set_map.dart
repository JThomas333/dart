void main(){
 uniqueAsc();
 vowelsCount();
 wordsCount();
}
void  uniqueAsc(){
List<int> rendezetlen = [4,2,5,8,7,1,1,3,6,8];
List<int> rendezett = rendezetlen.toSet().toList();
rendezett.sort();
print(rendezett);
}

void vowelsCount(){
String txt = "alma farol hul a level.";
Map<String, int> vowels ={
  "a": 0,
  "e": 0,
  "o": 0,
  "i": 0,
  "u": 0,
};
for (var i = 0; i < txt.length; i++) {
  if (vowels.containsKey(txt[i])) {
   
  }
}
}
void wordsCount(){

}