import 'package:flutter/material.dart';

void main() {
  runApp(BebasApp());
}

class BebasApp extends StatelessWidget {
  const BebasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // appBar => navbar / header
          appBar: AppBar(
            backgroundColor: Colors.green[300],
            title: const Text("My Project"),
            centerTitle: true,
          ),
          body: Center(
            // child: Image(
            //     // Image Provider :
            //     // 1. Asset Image => gambar yang ada pada folder project dan perlu di daftarkan di pubspec.yaml
            //     // image: AssetImage("assets/img1.jpg"),
            //     // 2. Network Image => gambar dari internet dan harus terkoneksi internet
            //     // image: NetworkImage("https://picsum.photos/seed/picsum/400/400"),
            //     // Jarang Digunakan hanya pada kasus tertentu
            //     // 3. File Image
            //     // 4. Memory Image
            //     ),

            // cara cepat penggunaan Image
            // child: Image.asset('assets/img1.jpg'),
            child: Image.network("https://picsum.photos/seed/picsum/400/400"),
          )),
    );
  }
}
