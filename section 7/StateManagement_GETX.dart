import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final mycontroller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan GETX"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                print("BUILD WIDGET TEXT");
                return Text(
                  "${mycontroller.data.value}",
                  style: TextStyle(fontSize: 60),
                );
              }),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        mycontroller.decrement();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 30),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        mycontroller.increment();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 30),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}

class Controller extends GetxController {
  var data = 0.obs; // state yang akan selalu di pantau perubahannya
  increment() => data++;
  decrement() => data--;
}
