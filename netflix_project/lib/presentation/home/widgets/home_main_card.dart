

import 'package:flutter/material.dart';
class HomeCard extends StatelessWidget {
  final String imageUrl;
   const HomeCard({super.key, required this.imageUrl});


  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      width: sizeWidth * 0.3,
      height: 110,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        image:
            DecorationImage(fit: BoxFit.cover, image: NetworkImage(imageUrl)),
      ),
    );
  }
}
