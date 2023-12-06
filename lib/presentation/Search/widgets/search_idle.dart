import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/search_bloc/bloc/search_bloc.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/core/constanc.dart';
import 'package:netflix_project/presentation/Search/widgets/search_tile.dart';

// const imageUrl =
//     "https://www.themoviedb.org/t/p/w250_and_h141_face/9faGSFi5jam6pDWGNd0p8JcJgXQ.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(
          title: "Top Search",
        ),
        sizedHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text("Error is occured"),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text("List is empty"),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                // ignore: body_might_complete_normally_nullable
                itemBuilder: ((context, index) {
                  final movie = state.idleList[index];
                 return TopSearchItem(
                    title: movie.title ?? "no title provided",
                    imageUrlApi: "$imageAppendurl${movie.backdropPath}",
                  );
                
                }),
                separatorBuilder: ((context, index) => sizedHeight),
                itemCount: state.idleList.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchItem extends StatelessWidget {
  final String title;
  final String imageUrlApi;
  const TopSearchItem(
      {super.key, required this.title, required this.imageUrlApi});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: sizeWidth * 0.4,
          height: 100,
          decoration:  BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrlApi))),
        ),
        sizedWidth,
        sizedWidth,
        Expanded(
            child: Text(
          title,
          style:
              const TextStyle(color: kwhiteColor, fontWeight: FontWeight.bold),
        )),
        IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: const Icon(Icons.play_arrow),
        )
      ],
    );
  }
}
