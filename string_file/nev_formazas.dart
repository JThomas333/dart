import 'dart:io';

void main(){
  print("Enter name:");
  String? name = stdin.readLineSync();

  print("Name ${name}");
  List<String> part = name!.split(" ");
  print(part);
  String part1 = part[0];
  String part2 = part[1];
  print(part1);
  print(part2);
  print(part1[0].toUpperCase() + part[0].substring(1) + " " + part2[0].toUpperCase() + part[1].substring(1));

}