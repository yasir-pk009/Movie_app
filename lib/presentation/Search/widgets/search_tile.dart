import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';

class SearchTitle extends StatelessWidget {
  final String title;

  const SearchTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: kwhiteColor,
        fontSize: 25,
      ),
    );
  }
}
