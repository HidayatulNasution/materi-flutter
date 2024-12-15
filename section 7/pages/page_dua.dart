import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './page_satu.dart';
import '../controllers/page_satu_controller.dart';

class PageDua extends StatelessWidget {
  // final pageSatuC = Get.put(PageSatuController());
  PageSatuController pageSatuC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${pageSatuC.data2['nama']} - ${pageSatuC.data2['umur']} Tahun",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
