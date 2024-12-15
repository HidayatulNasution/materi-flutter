import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Page Satu"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page Satu"),
            ElevatedButton(
              onPressed: () {
                // cara pertama back
                // Navigator.of(context).pop();
                // cara kedua
                Get.back();
              },
              child: Text("<< Back"),
            ),
          ],
        ),
      ),
    );
  }
}
