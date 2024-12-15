import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pages/page_satu.dart';
import './pages/page_satu.dart';
import './controllers/page_satu_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final pageSatuC = Get.put(PageSatuController());
  final pageSatuC = Get.lazyPut(() => PageSatuController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageSatu(),
    );
  }
}
