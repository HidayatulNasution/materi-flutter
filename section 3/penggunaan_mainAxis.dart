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
            title: const Text("Header"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.amber,
                child: const Center(
                  child: Text("Hi test"),
                ),
              ),
              Container(
                width: 70,
                height: 70,
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
