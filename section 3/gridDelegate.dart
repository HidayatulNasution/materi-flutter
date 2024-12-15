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
            backgroundColor: Colors.green[400],
            title: const Text("gridDelegate"),
            centerTitle: true,
          ),
          body: GridView(
            padding: EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
              bottom: 10,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
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
