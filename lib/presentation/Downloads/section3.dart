
import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';


class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: kButtonColorBlue,
              onPressed: () {},
              child: const Text(
                "Setup",
                style: TextStyle(color: kButtonColorWhite),
              ),
            ),
          ),
        ),
        
      ],
    );
  }
}