import 'dart:io';
void main(){
  print("Az első: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("A második: ");
  int num2 = int.parse(stdin.readLineSync()!);

  
  
  if (num1 > num2) {
    int num1regi = num1;
    num1 = num2;
    num2 = num1regi;
  }
  for (var i = num1; i <= num2; i++) {
    if (i % 2 == 0) {
      print("${i} páros");
    }
    else{
      print("${i} páratlan");
    }
  }

}