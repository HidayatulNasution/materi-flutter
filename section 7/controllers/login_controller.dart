import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool remember = false.obs;

  void login() async {
    final box = GetStorage();
    if (emailC.text == "admin@gmail.com" && passC.text == "admin") {
      if (box.read("dataRemember") != null) {
        box.remove("dataRemember");
      }
      if (remember.isTrue) {
        // simpan data email dan password di local memory
        box.write(
          "dataRemember",
          {
            "email": emailC.text,
            "pass": passC.text,
          },
        );
      }
      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
        title: "Error",
        middleText: "Email dan Password Salah, silahkan coba lagi",
      );
    }
  }

  void logout() {
    Get.offAllNamed("/login");
  }
}
