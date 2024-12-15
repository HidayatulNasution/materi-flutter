import 'dart:math';

import 'package:flutter/material.dart';

class Soal6 extends StatelessWidget {
  const Soal6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[200],
            leading: FlutterLogo(),
            title: Text("Text Judul (Soal 6)"),
            actions: [
              IconButton(
                onPressed: () {
                  print("View More");
                },
                icon: Icon(Icons.more_vert),
              )
            ]),
        // Cara Pertama membuat lingkaran
        // body: Center(
        //     child: ClipOval(
        //   child: Container(
        //     color: Colors.blue,
        //     width: 250,
        //     height: 250,
        //     child: Center(
        //         child: Text(
        //       "Hello",
        //       style: TextStyle(fontSize: 50, color: Colors.white),
        //     )),
        //   ),
        // ))

        // cara kedua
        body: Center(
            child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(250 / 4),
                ),
                child: Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ))));
  }
}
