// import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:netflix_project/application/Downloads_bloc/downloads_bloc.dart';
// import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/presentation/Downloads/section1.dart';
import 'package:netflix_project/presentation/Downloads/section2.dart';
import 'package:netflix_project/presentation/Downloads/section3.dart';
import 'package:netflix_project/presentation/main_page/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const Section1(),
    const Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(55),
            child: AppBarWidget(
              title: "Downloads",
            )),
        body: ListView.separated(
           shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          itemBuilder: (context,index)=> _widgetList[index],
          separatorBuilder: (context,index)=> const SizedBox(),
          itemCount: _widgetList.length,
        ),
      ),
    );
  }
}
