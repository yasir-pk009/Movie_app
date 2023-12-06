import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
// import 'package:netflix_project/core/colors/colors.dart';

const imageUrl = "https://images2.alphacoders.com/516/516664.jpg";

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
          child: Opacity(
            opacity: 0.5,
          child: Container(color: Colors.black,),),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: kwhiteColor,
                      size: 35,
                    ),
                    
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        label: const Text(
                          "Play",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.info,
                      color: kwhiteColor,
                      size: 35,
                    ),
                    // Text(
                    //   "Info",
                    //   style: TextStyle(
                    //       color: kwhiteColor,
                    //       fontSize: 15,
                    //       fontWeight: FontWeight.bold),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
