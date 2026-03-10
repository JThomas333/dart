import 'dart:io';
void main(){
  File rendeles = File("rendel.txt");
  List<String> lista = rendeles.readAsLinesSync();
  Map<String,List<int>> stat ={
    'PL' : [0,0,0],
    'TV' : [0,0,0],
    'NR' : [0,0,0]
  };
  for (String i in lista) {
    List<String> row = i.split(" ");
    int nap = int.parse(row[0]);
    String varos = row[1];
    int rendelesekdb = int.parse(row[2]);
  }
  


}