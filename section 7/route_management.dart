import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pages/home2.dart';
import './pages/page_1.dart';
import './pages/page_2.dart';
import './pages/page_3.dart';
import './pages/page_4.dart';
import './pages/page_5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      getPages: [
        GetPage(name: "/home", page: () => HomePage()),
        GetPage(name: "/page_satu", page: () => PageSatu()),
        GetPage(name: "/page_dua", page: () => PageDua()),
        GetPage(name: "/page_tiga", page: () => PageTiga()),
        GetPage(name: "/page_empat", page: () => PageEmpat()),
        GetPage(name: "/page_lima", page: () => PageLima()),
      ],
    );
  }
}
