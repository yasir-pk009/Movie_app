import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/hotandnew/hotandnew_bloc/hotandnew_bloc.dart';
// import 'package:netflix_project/core/colors/colors.dart';
// import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/core/constanc.dart';
import 'package:netflix_project/presentation/NewAndHot/widgets/comingsoon_widget.dart';
// import 'package:netflix_project/presentation/NewAndHot/widgets/video_widget.dart';
// import 'package:netflix_project/presentation/home/widgets/first_section.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  tabs: const [
                    Expanded(
                      child: Tab(
                        
                        text: "🍿 Coming Soon",
                      ),
                    ),
                    // Tab(
                    //   text: "👀 Everyone Watching",
                    // ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ComingSoonList(key: Key("coming soon")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<HotandnewBloc, HotandnewState>(
      builder: (context, state) {
        if (state.comingSoonList.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.isLoading) {
          return const Center(child: Text("Loading"));
        } else {
          return ListView.separated(
            itemBuilder: (context, index) {
            
              return ComingSoonWidget(
                id: state.comingSoonList[index].id.toString(),
                month: state.comingSoonList[index].releaseDate,
                day: state.comingSoonList[index].releaseDate ,
                posterPath:
                    "$imageAppendurl${state.comingSoonList[index].posterPath}",
                movieName: state.comingSoonList[index].originalTitle,
                description: state.comingSoonList[index].overview,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox();
            },
            itemCount: state.comingSoonList.length,
          );
        }
      },
    );
  }
}
