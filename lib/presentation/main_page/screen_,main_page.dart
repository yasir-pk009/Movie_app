import 'package:flutter/material.dart';
import 'package:netflix_project/presentation/Downloads/screen_downloads.dart';
import 'package:netflix_project/presentation/NewAndHot/screen_hot_and_new.dart';
import 'package:netflix_project/presentation/Search/screen_search.dart';
import 'package:netflix_project/presentation/fastLaght/screen_fast_laugh.dart';
import 'package:netflix_project/presentation/home/screen_home.dart';
// import 'package:netflix_project/core/colors/colors.dart';

import 'widgets/bottam_navigation.dart';

var pages =  [
  const ScreenHomeBottom(),
  const ScreenHotAndNew(),
  const ScreenFastAndLaugh(),
  const ScreenSearch(),
  ScreenDownloads()
];

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (BuildContext context, int index, Widget? _) {
            return pages[index];
          }),
      bottomNavigationBar:const BottamNavigatorWidget(),
    );
  }
}
