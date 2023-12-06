import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';

class MytextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hinttext;
  final bool obscure;

  const MytextField(
      {super.key,
      this.controller,
      required this.hinttext,
      required this.obscure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          enabledBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: logipagewhite)),
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.grey.shade400)
        ),
      ),
    );
  }
}
