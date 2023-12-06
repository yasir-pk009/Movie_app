



import 'dart:math';

import 'package:flutter/material.dart';



class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {super.key,
      this.angle = 0,
      required this.movieList,
      required this.margin,
      required this.size,
      this.radius = 10});
  final double radius;
  final EdgeInsets margin;
  final String movieList;
  final double angle;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.width * 1.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
              image: NetworkImage(movieList), fit: BoxFit.cover),
        ),
      ),
    );
  }
}




