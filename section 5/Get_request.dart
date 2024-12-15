import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;
import 'dart:convert'; // Tambahkan untuk JSON decoding

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Tambahkan super.key untuk mendukung hot reload

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hilangkan banner debug
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key}); // Tambahkan super.key

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String id;
  late String email;
  late String name;

  @override
  void initState() {
    id = "Unknown";
    email = "Unknown";
    name = "Unknown";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP GET"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tampilkan ID
            Text(
              "ID : $id",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),

            // Tampilkan Email
            Text(
              "Email : $email",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),

            // Tampilkan Nama
            Text(
              "Name : $name",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 15),

            // Tombol untuk Fetch Data
            ElevatedButton(
              onPressed: () async {
                try {
                  var myresponse = await myhttp
                      .get(Uri.parse("https://reqres.in/api/users/2"));

                  if (myresponse.statusCode == 200) {
                    print("Berhasil Get Data");
                    Map<String, dynamic> data =
                        json.decode(myresponse.body) as Map<String, dynamic>;

                    setState(() {
                      id = data["data"]["id"].toString();
                      email = data["data"]["email"].toString();
                      name =
                          "${data["data"]["first_name"]} ${data["data"]["last_name"]}";
                    });
                  } else {
                    print("ERROR ${myresponse.statusCode}");
                  }
                } catch (e) {
                  print("Terjadi error: $e");
                }
              },
              child: const Text("Get Data"),
            ),
          ],
        ),
      ),
    );
  }
}
