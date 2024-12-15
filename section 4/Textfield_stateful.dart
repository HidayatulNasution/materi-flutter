import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// contoh dengan statefull
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
        emailController: emailC,
        passController: passC,
        isHidden: isHidden,
        togglePasswordVisibility: () {
          setState(() {
            isHidden = !isHidden;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passController;
  final bool isHidden;
  final VoidCallback togglePasswordVisibility;

  const HomePage({
    Key? key,
    required this.emailController,
    required this.passController,
    required this.isHidden,
    required this.togglePasswordVisibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field Statefull"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: emailController,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              prefixIcon: const Icon(Icons.email),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: passController,
            autocorrect: false,
            obscureText: isHidden,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              prefixIcon: const Icon(Icons.vpn_key),
              suffixIcon: IconButton(
                onPressed: togglePasswordVisibility,
                icon: Icon(
                  isHidden ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              print(
                  "LOGIN Dengan : Email (${emailController.text}) & Pass (${passController.text})");
            },
            child: const Text("Login"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[900],
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
