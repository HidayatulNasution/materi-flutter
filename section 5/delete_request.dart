import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "Not Found";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("HTTP Delete"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              var response =
                  await http.get(Uri.parse("https://reqres.in/api/users/2"));
              Map<String, dynamic> mybody = json.decode(response.body);
              // cara untuk lihat data (debug)
              print(mybody);
              setState(() {
                data =
                    "Nama : ${mybody['data']['first_name']} ${mybody['data']['last_name']}";
              });
            },
            icon: Icon(Icons.get_app_sharp),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(data, style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
            onPressed: () async {
              var response =
                  await http.delete(Uri.parse("https://reqres.in/api/users/2"));
              if (response.statusCode == 204) {
                setState(() {
                  data = "Berhasil Di Hapus";
                });
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: Text("Delete", style: TextStyle(fontSize: 15)),
          ),
        ],
      ),
    );
  }
}
