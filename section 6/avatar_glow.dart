import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 180, 163),
        title: const Text("Avatar Glow", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: AvatarGlow(
          glowColor: Colors.blue,
          duration: const Duration(milliseconds: 800),
          child: Material(
            elevation: 8.0,
            shape: const CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              backgroundImage: const NetworkImage('https://picsum.photos/200'),
              radius: 75.0,
            ),
          ),
        ),
      ),
    );
  }
}
