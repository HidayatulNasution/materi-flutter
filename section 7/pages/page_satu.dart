import 'package:flutter/material.dart';
import '../controllers/page_satu_controller.dart';
import 'package:get/get.dart';
import './page_dua.dart';

class PageSatu extends StatelessWidget {
  // final pageSatuC = Get.put(PageSatuController());
  PageSatuController pageSatuC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Page Satu"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${{pageSatuC.data['nama']}} - ${pageSatuC.data['umur']} Tahun",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageDua(),
                    ),
                  );
                },
                child: Text("Next >>"),
              ),
            ],
          ),
        ));
  }
}
