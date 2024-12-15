import 'package:flutter/material.dart';

class Soal1 extends StatelessWidget {
  const Soal1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[200],
            leading: FlutterLogo(),
            title: Text("Text Judul (Soal 1)"),
            actions: [
              IconButton(
                onPressed: () {
                  print("View More");
                },
                icon: Icon(Icons.more_vert),
              )
            ]),
        body: Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ));
  }
}
