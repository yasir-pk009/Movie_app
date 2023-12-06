import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';


class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.settings,
              color: kwhiteColor,
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              "Smart Downloads",
              style: TextStyle(color: kwhiteColor, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 2,
        ),
      ],
    );
  }
}
