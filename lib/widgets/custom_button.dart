import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 60,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: Color(0xff2b475e)),
        ),
      ),
    );
  }
}
