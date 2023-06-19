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
        backgroundColor: const Color(0xff222222),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 100,
                  width: 1920,
                  color: const Color(0xff0D3b66),
                ),
                Text(
                  "Flutter POS",
                  style: GoogleFonts.roboto(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffd1d1d1),
                  ),
                ),
              ],
            ),
            Row(
              children: [],
            ),
            Row(
              children: [],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 80,
                  width: 1920,
                  color: const Color(0xff0D3b66),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        //TODO: move to page
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        fixedSize: MaterialStateProperty.all(Size(70, 70)),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xfff95738)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Admin",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Text(
                      "Your Business",
                      style: GoogleFonts.roboto(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffd1d1d1),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //TODO: move to page
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        fixedSize: MaterialStateProperty.all(Size(70, 70)),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xfff95738)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Exit",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
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
