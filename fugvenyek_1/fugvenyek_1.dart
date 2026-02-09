
import 'dart:math';
void main() {
    
    getRandomNumber();
    int num1 = 2;
    getEvenOdd(num1);
    int num2 = 15;
    getDividers(num2);
    String str = " alma";
    getVowels(str);
    getConsonants(str);
    getFirstChar(str);
    int num3 = 150;
    sumOfDigits(num3);
}
void getRandomNumber(){
    // var random = Random();
    // int randomNumber = random.nextInt(99) + 1;
    // print("Random szám: $randomNumber");
    int randomNumber = Random().nextInt(99) + 1;
    print("Random szám: $randomNumber");
}
void getEvenOdd(int a){
    if(a % 2 != 0){
        print("A szám odd.");
    }
    else{
        print("A szám even.");
    }
}
void getDividers(a){
    List<int> dividers = [];
    for(int i = 1; i <= a; i++){
        if(a % i == 0){
            dividers.add(i);
        }
    }
    print("A szám osztói: $dividers");
}
void getVowels (String b){
    List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'á', 'é', 'í', 'ó', 'ö', 'ő', 'ú', 'ü', 'ű'];
    List<String> foundVowels = [];
    for (var i = 0; i < b.length; i++) {
        if (vowels.contains(b[i])) {
            foundVowels.add(b[i]);
        }
    }
    print("A szó magánhangzója: $foundVowels");

}
void getConsonants (b){
    List<String> consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 'á', 'é', 'í', 'ó', 'ö', 'ő', 'ú', 'ü', 'ű'];
    List<String> foundConsonants = [];
    for (var i = 0; i < b.length; i++) {
        if (consonants.contains(b[i])) {
            foundConsonants.add(b[i]);
        }
    }
    print("A szó mássalhangzója: $foundConsonants");

}
void getFirstChar(b){
    print(b[0]);
}
void sumOfDigits(int c){
  int sum = 0;
 for (var i = 0; i < c; i++) {
   sum += i;
 }
 print(sum);
}
