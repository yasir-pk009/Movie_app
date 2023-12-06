import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottamNavigatorWidget extends StatelessWidget {
  const BottamNavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      
      valueListenable: indexChangeNotifier,
      builder: (BuildContext context, int updatedIndex,  _) {
      
        return BottomNavigationBar(
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              indexChangeNotifier.value = newIndex;
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: backgroundColor,
            selectedItemColor:  kwhiteColor,
            unselectedItemColor:  kgreyColor,
            selectedIconTheme: const IconThemeData(color: kwhiteColor),
            unselectedIconTheme: const IconThemeData(color: kgreyColor),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections), label: "New & Hot"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions), label: "Fast laugh"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: "Downloads"),
            ]);
      },
    );
  }
}
