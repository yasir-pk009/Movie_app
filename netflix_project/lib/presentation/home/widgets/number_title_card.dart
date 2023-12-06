
import 'package:flutter/material.dart';
import 'package:netflix_project/presentation/Search/widgets/search_tile.dart';
// import 'package:netflix_project/presentation/home/widgets/home_main_card.dart';
import 'package:netflix_project/presentation/home/widgets/number_card.dart';
class NumberMainCard extends StatelessWidget {
  final String title;
  const NumberMainCard({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(title: title),
        const SizedBox(height: 15.0), // Add space between title and list
        LimitedBox(
          maxHeight: 130, // Set your desired maximum height
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return  const Padding(
                padding: EdgeInsets.only(right: 10.0), // Adjust the spacing
                child: NumberCard(),
              );
            },
          ),
        ),
     
      ],
    );
  }
}