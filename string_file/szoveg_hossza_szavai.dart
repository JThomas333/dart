import 'dart:io';

void main(){
  print("Enter string:");
  String? mondat = stdin.readLineSync();

  print("mondat ${mondat!.length} karakter hosszú");
  List<String> szavak = mondat.split(" ");
  print("szavak száma: ${szavak.length}");
  
  
}
