import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  static String id = "RegisterView";

  String? email;
  String? password;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: 125,
              ),
              Image.asset(
                "assets/images/scholar.png",
                height: 100,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to Chat App",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: "pacifico",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                children: [
                  Text(
                    "REGISTER",
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
              CustomTextField(
                hintText: "Email",
                onChanged: (data) {
                  email = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: "Password",
                onChanged: (data) {
                  password = data;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    try {
                      await registerUser();
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnackBar(
                          context,
                          "The password provided is too weak.",
                        );
                      } else if (e.code == 'email-already-in-use') {
                        showSnackBar(
                          context,
                          "The account already exists for that email.",
                        );
                      }
                    } catch (e) {
                      showSnackBar(context, "Something went wrong.");
                    }
                    showSnackBar(context, "Successfully registered");
                  } else {}
                },
                title: "Register",
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "already have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      " Sign In",
                      style: TextStyle(
                        color: Color(0xffc7ede6),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: email!,
          password: password!,
        );
  }
}
