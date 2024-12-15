import 'dart:math';

import 'package:flutter/material.dart';

class soal20 extends StatelessWidget {
  const soal20({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[200],
          leading: FlutterLogo(),
          title: Text("Text Judul (Soal 20)"),
          actions: [
            IconButton(
              onPressed: () {
                print("View More");
              },
              icon: Icon(Icons.more_vert),
            )
          ]),
      body: Stack(
        children: [
          Container(
            width: 250,
            height: 250,
            color: Colors.green,
          ),
          Container(
            width: 225,
            height: 225,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.purple,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.amber,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
