import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_project/application/home/home_bloc.dart';
import 'package:netflix_project/core/constanc.dart';
import 'package:netflix_project/presentation/home/widgets/first_section.dart';
import 'package:netflix_project/presentation/home/widgets/home_appbar.dart';
import 'package:netflix_project/presentation/home/widgets/main_title_card.dart';
import 'package:netflix_project/presentation/home/widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHomeBottom extends StatelessWidget {
  const ScreenHomeBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.initial());
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  } else if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state.isError) {
                          return const Center(
                            child: Text("error"),
                          );

                        } else if(state.homeresultList.isEmpty){
                          return const Center(
                            child: Text("list is empty"),
                          );
                        }
                        
                        else {
                          return ListView(shrinkWrap: true, children: [
                            FirstSection(),
                            sizedHeight,
                            MainTitleAndCard(
                              imageUrlFromState:
                                  state.homeresultList[1].backdropPath ?? "",
                              title: "Released in the past year",
                            ),
                            sizedHeight,
                            MainTitleAndCard(
                              imageUrlFromState:
                                  state.homeresultList[1].backdropPath ?? "",
                              title: "Trending now",
                            ),
                            sizedHeight,
                            NumberMainCard(

                                title: "Top 10 shows in India today"),
                            sizedHeight,
                            MainTitleAndCard(
                            imageUrlFromState: state.homeresultList[2].backdropPath ?? "",
                              title: "South Indian Cinema",
                            ),
                          ]);
                        }
                      },
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.transparent, Colors.black],
                              ),
                            ),
                            child: const HomeAppBarWidget(),
                          )
                        : sizedHeight
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
