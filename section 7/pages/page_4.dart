import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './page_5.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Empat"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page Empat"),
            ElevatedButton(
              onPressed: () {
                Get.to(PageLima());
                // Get.toNamed("/page_lima");
              },
              child: Text("Next >>"),
            ),
          ],
        ),
      ),
    );
  }
}
