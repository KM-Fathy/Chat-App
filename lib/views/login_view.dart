import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b475e),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset("assets/images/scholar.png"),
            const Text(
              "Welcome to Chat App",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: "pacifico",
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            const Row(
              children: [
                Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(hintText: "Email"),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(hintText: "Password"),
            const SizedBox(
              height: 20,
            ),
            const CustomButton(),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  " Register",
                  style: TextStyle(
                    color: Color(0xffc7ede6),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
