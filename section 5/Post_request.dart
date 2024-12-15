import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  String hasilResponse = "Belum ada Data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP Post"),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Name",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: jobC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Job",
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              var myresponse = await http.post(
                Uri.parse("https://reqres.in/api/users"),
                body: {"name": nameC.text, "job": jobC.text},
              );

              Map<String, dynamic> data =
                  json.decode(myresponse.body) as Map<String, dynamic>;

              setState(() {
                hasilResponse = "${data['name']} - ${data['job']}";
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyanAccent,
              foregroundColor: Colors.black,
            ),
            child: Text("Submit"),
          ),
          SizedBox(
            height: 50,
          ),
          Divider(
            color: Colors.grey[800],
          ),
          SizedBox(
            height: 20,
          ),
          Text(hasilResponse),
        ],
      ),
    );
  }
}
