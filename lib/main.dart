import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Flutter POS",
                style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(1, 164, 255, 164))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("asd!"),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Material(
            color: Colors.red,
            child: SizedBox(
              width: 20,
              height: 20,
            ),
          ),
          Text("Welcome!"),
        ],
      ),
    );
  }
}
