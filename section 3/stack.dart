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
        body: Stack(
          children: [
            Container(
              width: 190,
              height: 190,
              color: Colors.amber,
              child: const Center(
                child: Text("Hi"),
              ),
            ),
            Container(
              width: 170,
              height: 170,
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
                child: Text("Hi"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
