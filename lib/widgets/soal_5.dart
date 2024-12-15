import 'dart:math';

import 'package:flutter/material.dart';

class Soal5 extends StatelessWidget {
  const Soal5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[200],
            leading: FlutterLogo(),
            title: Text("Text Judul (Soal 5)"),
            actions: [
              IconButton(
                onPressed: () {
                  print("View More");
                },
                icon: Icon(Icons.more_vert),
              )
            ]),
        body: Center(
            child: Container(
          color: Colors.blue,
          width: 250,
          height: 250,
          child: Center(
              child: Text(
            "Hello",
            style: TextStyle(fontSize: 50, color: Colors.white),
          )),
        )));
  }
}
