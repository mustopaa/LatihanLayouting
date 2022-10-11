import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Layouting Mustopa")),
        body: Container(
            color: Colors.lightGreen,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Text(
                    "Belajar Layouting pada Pertemuan ke-3",
                    textAlign: TextAlign.center,
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.orange,
                          height: 150,
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.red,
                        )),
                      ]),
                ),
              ],
            )),
      ),
    );
  }
}
