import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Grid View"),
          ),
          body: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            children: [
              Container(
                color: Colors.amber,
                child: const Center(
                  child: Text("Hi test"),
                ),
              ),
              Container(
                color: Colors.cyanAccent,
                child: const Center(
                  child: Text("hi Kawan"),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text("Hi test2"),
                ),
              ),
              Container(
                color: Colors.amber,
                child: const Center(
                  child: Text("Hi test"),
                ),
              ),
              Container(
                color: Colors.cyanAccent,
                child: const Center(
                  child: Text("hi Kawan"),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text("Hi test2"),
                ),
              ),
            ],
          )),
    );
  }
}
