import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './page_1.dart';
import './page_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(PageSatu()); // push
              // Get.off(PageSatu()); // pushReplacement
            },
            child: Text("Page 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(PageDua());
              // Get.toNamed("/page_dua");
            },
            child: Text("Page 2"),
          ),
        ],
      ),
    );
  }
}
