import 'dart:math';

import 'package:flutter/material.dart';

class soal23 extends StatelessWidget {
  const soal23({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[200],
          leading: FlutterLogo(),
          title: Text("Text Judul (Soal 23)"),
          actions: [
            IconButton(
              onPressed: () {
                print("View More");
              },
              icon: Icon(Icons.more_vert),
            )
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 268,
                    height: 268,
                    color: const Color(0xFF0D47A1),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(125),
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                    color: Colors.grey[300],
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://picsum.photos/500/500"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              "Hello World",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
