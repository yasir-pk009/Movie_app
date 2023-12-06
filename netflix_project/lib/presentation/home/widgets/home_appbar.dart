import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
// import 'package:netflix_project/core/colors/colors.dart';
// import 'package:netflix_project/core/colors/constanc.dart';



const netflix_img = "https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456";
class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 16), // Added some padding on the left
            const Image(
              image: NetworkImage(netflix_img),
              width: 40,  // Adjusted the width
              height: 50, // Adjusted the height
            ),
            const Spacer(),
            const Icon(
              Icons.cast,
              size: 30,
              color: kwhiteColor,
            ),
            const SizedBox(width: 16), // Added some padding between the icon and the container
            Container(
              color: const Color.fromARGB(255, 32, 101, 157),
              width: 30,
              height: 30,
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Tv shows",style: TextStyle(color: kwhiteColor,fontSize: 15,fontWeight: FontWeight.bold),),
            Text("Movies",style: TextStyle(color: kwhiteColor,fontSize: 15,fontWeight: FontWeight.bold),),
            Text("Categories",style: TextStyle(color: kwhiteColor,fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        )
      ],
    );
  }
}
