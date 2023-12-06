// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/search_bloc/bloc/search_bloc.dart';
import 'package:netflix_project/core/colors/colors.dart';
// import 'package:netflix_project/core/constanc.dart';
import 'package:netflix_project/presentation/Search/screen_result.dart';
import 'package:netflix_project/presentation/Search/widgets/search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialized());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                style: TextStyle(color: kwhiteColor),
                placeholder: 'Search for movies and TV shows',
                onChanged: (value) {
                  BlocProvider.of<SearchBloc>(context)
                      .add(SearchMovie(movieQuery: value));
                },
              ),
              const SizedBox(height: 16),
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return Expanded(
                    child: state.searchResultList.isEmpty
                        ? SearchIdleWidget()
                        : ScreenResultWidget(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
