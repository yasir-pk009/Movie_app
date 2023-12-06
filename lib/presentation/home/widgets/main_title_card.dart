import 'package:flutter/material.dart';
import 'package:netflix_project/presentation/Search/widgets/search_tile.dart';
import 'package:netflix_project/presentation/home/widgets/home_main_card.dart';

class MainTitleAndCard extends StatelessWidget {
  final String title;
  final String imageUrlFromState;

  const MainTitleAndCard({
    Key? key,
    required this.title, required this.imageUrlFromState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: SearchTitle(

            title: title,
           
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: HomeCard(imageUrl: imageUrlFromState),
              );
            },
          ),
        ),
      ],
    );
  }
}
