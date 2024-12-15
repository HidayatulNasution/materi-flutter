import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Dialog GETX",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
              title: "Judul",
              content: const Text("Tests"),
              confirm: ElevatedButton(
                onPressed: () {
                  Get.back(); // Menutup dialog
                  print("DONE button pressed");
                },
                child: const Text("DONE"),
              ),
              cancel: ElevatedButton(
                onPressed: () {
                  Get.back(); // Menutup dialog
                  print("Cancel button pressed");
                },
                child: const Text("Cancel"),
              ),
            );
          },
          child: const Text("OPEN Dialog"),
        ),
      ),
    );
  }
}
