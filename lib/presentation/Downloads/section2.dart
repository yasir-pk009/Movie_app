import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/core/constanc.dart';
import 'package:netflix_project/presentation/Downloads/widget/downloadImageWidget.dart';

import '../../application/Downloads_bloc/downloads_bloc.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getDownloadsImage());

    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kBlacklColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Introducing Downloads for You",
            style: TextStyle(color: kwhiteColor, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            "We will download a personalized selection of movies and shows for you, so there is always something to watch on your device",
            style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          BlocBuilder<DownloadsBloc, DownloadsState>(
            builder: (context, state) {
              return state.downloads.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : SizedBox(
                      width: double.infinity,
                      height: size.width * 0.9,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          DownloadImageWidget(
                            size: Size(size.width * 0.4, size.width * 0.58),
                            movieList:
                                "$imageAppendurl${state.downloads[0].backdropPath}",
                            angle: 15,
                            margin: const EdgeInsets.only(left: 130, bottom: 50),
                          ),
                          DownloadImageWidget(
                            size: Size(size.width * 0.4, size.width * 0.58),
                            movieList:
                                "$imageAppendurl${state.downloads[1].backdropPath}",
                            margin: const EdgeInsets.only(right: 130, bottom: 50),
                            angle: -15,
                          ),
                          DownloadImageWidget(
                            size: Size(size.width * 0.4, size.width * 0.58),
                            movieList:
                                "$imageAppendurl${state.downloads[2].backdropPath}",
                            margin: const EdgeInsets.only(bottom: 10),
                            angle: 0,
                          )
                        ],
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
