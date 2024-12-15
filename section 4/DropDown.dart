import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List data = [
    {
      "Judul": "Pilihan Ke - 1",
      "data": "1",
    },
    {
      "Judul": "Pilihan Ke - 2",
      "data": "2",
    },
    {
      "Judul": "Pilihan Ke - 3",
      "data": "3",
    },
    {
      "Judul": "Pilihan Ke - 4",
      "data": "4",
    },
    {
      "Judul": "Pilihan Ke - 5",
      "data": "5",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DropDown"),
        ),
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(30),
                child: DropdownButton(
                    items: data
                        .map(
                          (e) => DropdownMenuItem(
                            child: Text("$e{'judu'}"),
                            value: "${e['data']}",
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      print(value);
                    }))));
  }
}
