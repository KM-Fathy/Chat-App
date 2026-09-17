import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 60,
      child: const Center(
        child: Text(
          "Sign In",
          style: TextStyle(color: Color(0xff2b475e)),
        ),
      ),
    );
  }
}
