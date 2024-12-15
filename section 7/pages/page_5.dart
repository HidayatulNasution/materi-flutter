import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './home2.dart';

class PageLima extends StatelessWidget {
  const PageLima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Lima"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page Lima"),
            ElevatedButton(
              onPressed: () {
                Get.offAll(HomePage());
                // Get.offAllNamed('/home');
              },
              child: Text("Back To Home"),
            ),
          ],
        ),
      ),
    );
  }
}
