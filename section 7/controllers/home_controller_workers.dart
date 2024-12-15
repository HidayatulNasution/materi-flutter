import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataPantau = 0.obs;

  void change() => dataPantau++;

  @override
  void onInit() {
// ever(dataPantau, (data) => print("terjadi perubahan"));
// once(dataPantau, (data) => print("cuma 1x pantau"));
// debounce (
// dataPantau,
// (data) => print ("dieksekusi 2 detik setelah berhenti memantau"),
// time: Duration(seconds: 2),
// );
    interval(
      dataPantau,
      (data) => print("dieksekusi 2 detik"),
      time: Duration(seconds: 2),
    );
    super.onInit();
  }
}
