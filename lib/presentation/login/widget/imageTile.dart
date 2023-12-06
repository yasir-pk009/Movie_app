import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String imagePath;
  const ImageTile({super.key,  required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
         width: 50,  // Set a fixed width for testing
      height: 50, 
      
                  decoration:  BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.cover,)),
                );
  }
}