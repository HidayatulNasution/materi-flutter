import 'package:get/get.dart';

class HomeController extends GetxController {
  // Variabel untuk monitoring/pantau perubahan
  // RxInt dataPantau = 0.obs; // untuk reactive state management => viewnya menggunakan Obx
  int dataPantau =
      0; // untuk simple state management => viewnya menggunakan GetBuilder

  void tambahData() {
    dataPantau++;
    if (dataPantau % 5 == 0) {
      update();
    }
  }

  void refreshTampilan() {
    update();
  }
}
