import 'dart:math';

import 'package:flutter/material.dart';

class soal24 extends StatelessWidget {
  const soal24({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[200],
          leading: FlutterLogo(),
          title: Text("Text Judul (Soal 24)"),
          actions: [
            IconButton(
              onPressed: () {
                print("View More");
              },
              icon: Icon(Icons.more_vert),
            )
          ]),
      body: Column(
        children: [
          // Bagian horizontal scroll
          Container(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              bottom: 20,
            ),
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Container(
                    width: 100,
                    height: 120,
                    color: Colors.blue[900],
                    margin: const EdgeInsets.only(right: 20),
                  );
                } else {
                  return Container(
                    width: 100,
                    height: 120,
                    color: Colors.amber,
                    margin: const EdgeInsets.only(right: 20),
                  );
                }
              },
            ),
          ),
          // Bagian daftar vertikal dari soal_18.dart
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(20),
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          color: Colors.blue,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Hello kawan ${index + 1}",
                          style: const TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          color: Colors.amber,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Hello ${index + 1}",
                          style: const TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
