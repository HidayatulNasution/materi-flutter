import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management Simple",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // penggunaan Reactive state management
            // cara 1 buat function obx
            // Obx(() {
            //   return Text(
            //   "${homeC.dataPantau}",
            //   style: TextStyle(fontSize: 60),
            // );
            // }),
            // cara 2 buat function obx
            // Obx(
            //   () => Text(
            //     "${homeC.dataPantau}",
            //     style: TextStyle(fontSize: 60),
            //   ),
            // ),

            // penggunaan Simple State Management
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                "${controller.dataPantau}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                homeC.tambahData();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: Text("Add Data"),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                homeC.refreshTampilan();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              ),
              child: Text("Refresh Tampilan"),
            )
          ],
        ),
      ),
    );
  }
}
