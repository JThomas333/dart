import 'dart:io';

void main(){
  print("Enter string:");
  String? mondat = stdin.readLineSync();

  List<String> szavak = mondat!.split(" ");
  String megforditottMondat = "";
  for(int i = szavak.length - 1; i >= 0; i--){
    megforditottMondat += szavak[i] + " ";
  }
  print(megforditottMondat.trim());
}