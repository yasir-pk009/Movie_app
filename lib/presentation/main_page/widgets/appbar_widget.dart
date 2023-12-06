import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/core/constanc.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.title});
 final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sizedWidth,
        Text(title,style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 28,
        color: kwhiteColor),
        ),
       const Spacer(),
       const Icon(Icons.cast,
        size: 30,
        color: Colors.white,),
        sizedWidth,
        Container(color: Color.fromARGB(255, 32, 101, 157),
        width: 30,
        height: 30,),
        sizedWidth,
        
        
      ],
    );
  }
}