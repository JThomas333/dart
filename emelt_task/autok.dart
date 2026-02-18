
import 'dart:io';

void main(){
  File file = File("./emelt_task/jeladas.txt");
  List<String> lines = file.readAsLinesSync();
  List<Map<String, dynamic>> autok = [];
  for (String line in lines) {
    List<String> row = line.split("\t");
    autok.add({
      "rendszám" : row[0],
      "idő" : int.parse(row[1]) * 60 + int.parse(row[2]),
      "sebbeség" : int.parse(row[3])
      });
  }
  print("2. feladat: ");
  var utolso = autok.last;
  var ido = utolso["ido"];
  var ora = ido ~/ 60;
  var perc = ido % 60;

  print("Az utolsó jeladás időpontja ${ora}:${perc}, a jármű rendszáma ${utolso["rendszam"]}");

  print("3. feladat: ");

   var elso = autok.first;
   List<String> idok =[];
   for (var auto in autok) {
     if (auto["rendszam"] == elso["rendszam"]) {
      var ido = auto["ido"];
      var ora = ido ~/ 60;
      var perc = ido % 60;
       idok.add("${ora}:${perc}");
     }
   }
  print("Az első jármű: ${elso["rendszam"]}");
  print("Jeladásaink időpontjai: ${idok.join(' ')}");

}