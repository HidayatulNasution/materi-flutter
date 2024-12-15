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
        // Container => kotak
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const FlutterLogo(
                  size: 200), // Ukuran FlutterLogo diatur menjadi 200
              const SizedBox(
                  height: 10), // Memberikan jarak antara logo dan container
              Container(
                width: 200,
                height:
                    150, // Tinggi diperbesar untuk memuat ikon, teks, dan tombol
                color: Colors.blue[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.red[200],
                    ), // Menambahkan ikon
                    const SizedBox(height: 10), // Jarak antara ikon dan teks
                    const Text("My App"), // Teks di dalam container
                    const SizedBox(height: 10), // Jarak antara teks dan tombol
                    ElevatedButton(
                      onPressed: () {
                        // Menjalankan Sebuah Fungsi
                        print("KLIK");
                      },
                      child: const Text("Klik Saya"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
