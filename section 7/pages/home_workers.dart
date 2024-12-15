import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller_workers.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("Workers")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Terjadi Perubahan : ${homeC.dataPantau} x",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
              SizedBox(height: 20),
              TextField(
                onChanged: (value) => homeC.change(),
                decoration: InputDecoration(
                  labelText: "Data",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
