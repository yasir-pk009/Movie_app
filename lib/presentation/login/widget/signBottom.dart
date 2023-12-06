import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';

class SignBotton extends StatelessWidget {

  final  Function()? onTap;
  final String text;
  const SignBotton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Center(
          child: Text(
            text,
            style: const TextStyle(color: loginPagecolorBlock),
          ),
        ),
      ),
    );
  }
}
