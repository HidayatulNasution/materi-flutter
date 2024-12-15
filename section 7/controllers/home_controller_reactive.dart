import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataInt = 0.obs;
  RxString dataString = 'data'.obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = false.obs;
  RxList<dynamic> dataList = [1, 2, 3].obs;
  //RxSet<int> dataSet = {1, 2, 3}.obs;
  var dataSet = RxSet<int>({1, 2, 3});
  RxMap<String, dynamic> dataMap = <String, dynamic>{
    "id": 1,
    "nama": "tes",
    "umur": 23,
  }.obs;

  void gantiNama() {
    dataMap['nama'] = "Ranti";
  }

  int angkaSelanjutnya = 4;

  void ubahDataList() {
    dataList[0] = 99;
  }

  void tambahDataList() {
    dataList.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void tambahDataSet() {
    dataSet.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void ubahDataSet() {
    dataSet.value = {99, 2, 3};
  }

  void gantiDataBool() {
    // cara pertama
    // if (dataBool.isTrue) {
    //   dataBool.value = false;
    // } else {
    //   dataBool.value = true;
    // }

    // cara kedua
    dataBool.toggle();
  }

  void updateDataString() {
    dataString.value = "data updated";
  }

  void resetDataString() {
    dataString.value = "data";
  }

  void incrementInt() => dataInt++;
  void decrementInt() => dataInt--;

  void incrementDouble() => dataDouble.value++;
  void decrementDouble() => dataDouble.value--;
}
