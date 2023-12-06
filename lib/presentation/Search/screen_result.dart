import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/search_bloc/bloc/search_bloc.dart';
import 'package:netflix_project/core/constanc.dart';
import 'package:netflix_project/presentation/Search/widgets/search_tile.dart';

class ScreenResultWidget extends StatelessWidget {
  const ScreenResultWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: "Movies and TV"),
        const SizedBox(height: 16),
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1 / 1.5,
                ),
                itemCount: state.searchResultList.length,
                itemBuilder: (context, index) {
                  return MainCard(
                    imageurl: "$imageAppendurl${state.searchResultList[index].posterPath}",
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final imageurl;

  const MainCard({Key? key, this.imageurl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            imageurl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
