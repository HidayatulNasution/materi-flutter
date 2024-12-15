import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './page_4.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Tiga"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page Tiga"),
            ElevatedButton(
              onPressed: () {
                Get.to(PageEmpat());
                // Get.toNamed("/page_empat");
              },
              child: Text("Next >>"),
            ),
          ],
        ),
      ),
    );
  }
}
