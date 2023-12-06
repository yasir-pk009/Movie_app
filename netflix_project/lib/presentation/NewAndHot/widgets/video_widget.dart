

import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/presentation/home/widgets/first_section.dart';


class VideoWidget extends StatelessWidget {
  
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
         children: [
           Container(
             width: double.infinity,
             height: 200, // Half of the red container's height
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: NetworkImage(imageUrl),
               ),
             ),
           ),
           Positioned(
             bottom: 0,
             right: 0,
             child: CircleAvatar(
               backgroundColor: kBlacklColor,
               child: IconButton(
                 onPressed: () {},
                 icon: const Icon(Icons.volume_off),
               ),
             ),
           ),
         ],
       );
  }
}
