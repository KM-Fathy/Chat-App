import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b475e),
      body: Column(
        children: [
          Image.asset("assets/images/scholar.png"),
          const Text(
            "Welcome to Chat App",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontFamily: "pacifico",
            ),
          ),
          const Text(
            "SIGN IN",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
