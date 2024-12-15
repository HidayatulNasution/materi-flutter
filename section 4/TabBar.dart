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
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Tab Bar
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Whatsapp TabBar'),
          centerTitle: false,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.linked_camera_rounded),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("Camera"),
          ),
          Center(
            child: Text("Chats"),
          ),
          Center(
            child: Text("Status"),
          ),
          Center(
            child: Text("Calls"),
          ),
        ]),
      ),
    );
  }
}
