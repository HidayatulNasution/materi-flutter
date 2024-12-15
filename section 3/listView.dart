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
            title: const Text("List View"),
          ),
          body: ListView(
            // terdapat 2 listview scrollDirection yaitu:
            // 1. horizontal yang berpengaruh ukuran width, ukuran height tidak berpengaruh
            // 2. vertical yang berpengaruh ukuran height, ukuran width tidak berpengaruh
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Hi test"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.cyanAccent,
                child: const Center(
                  child: Text("hi Kawan"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text("Hi test2"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Hi test"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.cyanAccent,
                child: const Center(
                  child: Text("hi Kawan"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text("Hi test2"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Hi test"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.cyanAccent,
                child: const Center(
                  child: Text("hi Kawan"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text("Hi test2"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Hi test"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.cyanAccent,
                child: const Center(
                  child: Text("hi Kawan"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
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
