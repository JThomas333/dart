import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Példa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  // void _decrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

                Text(
                "Kinyitottam életregényemet, lapoztam\nbenne, és a tartalmas életút fejezet\ncímnél hosszan elidőztem, kissé haboztam,\nez most sok vagy kevés, vakartam a fejemet",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 50),

              //2. vers
              Text(
                "A juhok természetesen csak legelnek,\naz emberek lazán feleselnek.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                ),
              ),

              const SizedBox(height: 30),




            // const Text('Hányszór katintottam a gombra:'),
            // Text(
            //   '$_counter',
            //   style: TextStyle(
            //     fontSize: 26,
            //     color: const Color.fromARGB(255, 167, 134, 36),
            //     fontWeight: FontWeight.bold,
            //     backgroundColor: const Color.fromARGB(255, 147, 233, 176),
            //   ),
            // ),
            // SizedBox(height: 30),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     FloatingActionButton(
            //       onPressed: () {
            //         setState(() {
            //           _counter--;
            //         });
            //       },
            //       tooltip: 'Decrement',
            //       child: const Icon(Icons.remove),
            //     ),
            //     SizedBox(width: 40,),
            //     FloatingActionButton(
            //       onPressed: _incrementCounter,
            //       tooltip: 'Increment',
            //       child: const Icon(Icons.add),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 20,),




            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     FloatingActionButton(
            //       onPressed: () {
            //         setState(() {
            //           _counter -= 10;
            //         });
            //       },
            //       tooltip: 'Decrement by 10',
            //       child: Text('-10'),
            //     ),
            //     SizedBox(width: 40,),
            //     FloatingActionButton(
            //       onPressed:() {
            //         setState(() {
            //           _counter += 10;
            //         });
            //       },
            //       tooltip: 'Increment by 10',
            //       child: Text('+10'),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
