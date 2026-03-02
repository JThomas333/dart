
import 'dart:io';

void main() {
  File file = File("jeladas.txt");
  List<String> lines = file.readAsLinesSync();
  List<Map<String, dynamic>> autok = [];
  for (String line in lines) {
    List<String> row = line.split('\t');
    autok.add({
      "rendszam": row[0],
      "ido": int.parse(row[1]) * 60 + int.parse(row[2]),
      "sebesseg": int.parse(row[3]),
    });
  }
  print("2. feladat: ");
  var utolso = autok.last;
  var ido = utolso['ido'];
  var ora = ido ~/ 60;
  var perc = ido % 60;
  print(
    "Az utolsó jeladás időpontja ${ora}:${perc}, a jármű rendszáma ${utolso['rendszam']}",
  );
  print("");
  print("3. feladat:");
  var elso = autok.first;
  List<String> idopontok = [];
  for (var auto in autok) {
    if (auto['rendszam'] == elso['rendszam']) {
      var ido = auto['ido'];
      var ora = ido ~/ 60;
      var perc = ido % 60;
      idopontok.add("${ora}:${perc}");
    }
  }
  print("Az első jármű: ${elso['rendszam']}");
  print("Jeladásainak időpontjai: ${idopontok.join(" ")}");
  print("4. Feladat: ");
  print("Kérem adja meg az órát: ");
  ora = int.tryParse(stdin.readLineSync()!);
  print("Kérem adja meg a percet: ");
  perc = int.tryParse(stdin.readLineSync()!);

  ido = ora * 60 + perc;
  int count = 0;
  for (var auto in autok) {
    if (auto["ido"] as int == ido) {
      count++;
    }
  }
  print("A jeladások száma: ${count}");
  print("");
  print("5. Feladat: ");
  int maxsebesseg = 0;
  List<String> rendszamok = [];

  for (var auto in autok) {
    if (auto["sebesseg"] as int == maxsebesseg) {
      rendszamok.add(auto["rendszam"]);
    } else if (auto["sebesseg"] as int > maxsebesseg) {
      maxsebesseg = auto["sebesseg"];
      rendszamok = [auto["rendszam"]];
    }
  }

  print("A legnagyobb sebesség km/h: ${maxsebesseg}");
  print("A jarmuvbek: ${rendszamok.join(" ")}");
  print("");
  print("6. Feladat");
  print("Kérem adja meg a rendszamot: ");
  var rendszam = stdin.readLineSync()!;
  int elozoido = 0;
  double tavolsag = 0.0;
  int elozosebesseg = 0;
  for (var auto in autok) {
    if (auto["rendszam"] as String == rendszam) {
      var ido = auto['ido'] as int;
      if (elozoido == 0) {
        elozoido = ido;
      }

      tavolsag += (ido - elozoido) / 60 * elozosebesseg;
      elozoido = ido;
      elozosebesseg = auto["sebesseg"];
      var ora = ido ~/ 60;
      var perc = ido % 60;
      String adat = "${ora}:${perc} ${tavolsag.toStringAsFixed(1)} km";
      print(adat);
    }
  }

  print("7. Feladat");
  Map<String, Map<String, String>> login = {};
  // {rendszam: {
  //   {elso: '6 30'},
  //   {utolso : '8 45'}
  // }}
  for (var auto in autok) {
    if (login.containsKey(auto["rendszam"])) {
      var ora = auto["ido"] ~/ 60;
      var perc = auto["ido"] % 60;
      login[auto["rendszam"]["utolso"]] = "$ora $perc" as Map<String, String>;
    } else {
      var ora = auto["ido"] ~/ 60;
      var perc = auto["ido"] % 60;
      login[auto["rendszam"]["elso"]] = "$ora $perc" as Map<String, String>;
    }
  }
  for (var auto in login.entries) {
    print("${auto.key} ${auto.value["elso"]} ${auto.value["utolso"]}");
 
  }


  Map<String, Map<String, String>> data = {};
  data['a'] = {'elso': '6 10'};
  data['aa'] = {'elso': '6 15'};
  data['b'] = {'elso': '6 20', 'utolso': '6 20'};
  print(data);
  data['a'] = {'elso': data['a']!['elso']!, 'utolso': '8 45'};
  data['aa'] = {...data['aa']!, 'utolso': '8 10'};
  data['b']!['utolso'] = '8 55';
  print(data);
}