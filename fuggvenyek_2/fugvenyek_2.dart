

void main() {
int num1 = 725;
reverseInteger(num1);
num num2 = 725;
sortNumbersDes(num2);

}

void reverseInteger(int a){
  String str = a.toString();
  String reversed = "";
  for (var i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  } 
  print(reversed);
}

void sortNumbersDes(num b){
  String str = b.toString();
  List<String> tomb = str.split("");
  tomb.sort();
  String csok = "";
  for (var i = tomb.length - 1; i >= 0; i--) {
    csok += tomb[i];
  }
  print(csok);
}
