import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  final box = GetStorage();
  final LoginController loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    if (box.read("dataRemember") != null) {
      loginC.remember.value = true;
      loginC.emailC.text = box.read("dataRemember")["email"];
      loginC.passC.text = box.read("dataRemember")["pass"];
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page Get Storage"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => TextField(
              controller: loginC.passC,
              autocorrect: false,
              obscureText: loginC.isHidden.value,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => loginC.isHidden.toggle(),
                  icon: Icon(Icons.remove_red_eye_outlined),
                ),
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Obx(
            () => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: loginC.remember.value,
              onChanged: (value) {
                loginC.remember.toggle();
              },
              title: Text("Remember Me"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => loginC.login(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
