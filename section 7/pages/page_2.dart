import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './page_3.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page Dua"),
            ElevatedButton(
              onPressed: () {
                Get.to(PageTiga());
                // Get.toNamed("/page_tiga");
              },
              child: Text("Next >>"),
            ),
          ],
        ),
      ),
    );
  }
}
