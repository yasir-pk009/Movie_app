import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return Row(children: [
      const SizedBox(
        height: 150,
        width: 40,
      ),
      Container(
        width: sizeWidth * 0.3,
        height: 110,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/NNxYkU70HPurnNCSiCjYAmacwm.jpg")),
        ),
      ),
      
    ]);
  }
}
