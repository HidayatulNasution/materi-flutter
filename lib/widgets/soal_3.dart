import 'package:flutter/material.dart';

class Soal3 extends StatelessWidget {
  const Soal3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[200],
            leading: FlutterLogo(),
            title: Text("Text Judul (Soal 3)"),
            actions: [
              IconButton(
                onPressed: () {
                  print("View More");
                },
                icon: Icon(Icons.more_vert),
              )
            ]),
        body: Center(
          child: FlutterLogo(
            size: 200,
          ),
        ));
  }
}
