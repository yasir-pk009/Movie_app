import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/fastLagh/fastLagh_bloc/fast_lagh_bloc.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/core/constanc.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';
// import 'package:netflix_project/presentation/fastLaght/widget/screen_scroll_item.dart';
// import 'package:netflix_project/presentation/fastLaght/widget/screen_scroll_item.dart';

import 'package:video_player/video_player.dart';

// import 'screen_scroll_item.dart';

final  videourls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4"
];

class ScrollItemWidgetInherited extends InheritedWidget {
  final Widget widget;
  final DownloadsModel movieData;

  const ScrollItemWidgetInherited(
      {Key? key, required this.widget, required this.movieData})
      : super(child: widget, key: key);

  @override
  bool updateShouldNotify(covariant ScrollItemWidgetInherited oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static ScrollItemWidgetInherited? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ScrollItemWidgetInherited>();
  }
}

class ScreenScrollItem extends StatelessWidget {
  final int index;
  const ScreenScrollItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterPath =
        ScrollItemWidgetInherited.of(context)?.movieData.backdropPath;

    final videoUrl = videourls[index % videourls.length];

    return Stack(children: [
      FastLaghVideoPlayer(onChanged: (bool) {}, videoPlayer: videoUrl),
      Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                  backgroundColor: kBlacklColor,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.volume_off))),

              // right side
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: posterPath == null
                        ? null
                        : NetworkImage("$imageAppendurl$posterPath"),
                  ),
                  sizedHeight,
                  sizedHeight,
                  ValueListenableBuilder(
                      valueListenable: likedVideoNotifier,
                      builder: (context, value, child) {
                        if (value.contains(index)) {
                          return GestureDetector(
                            onTap: () {
                               likedVideoNotifier.value.remove(index);
                                 // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                                 likedVideoNotifier.notifyListeners();
                            },
                            child: const VideoActionWidget(
                                icon: Icons.emoji_emotions, title: "LOL"),
                          );
                        }
                         return GestureDetector(
                            onTap: () {
                                 likedVideoNotifier.value.add(index);
                                 // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                                 likedVideoNotifier.notifyListeners();
                            },
                            child: const VideoActionWidget(
                                icon: Icons.favorite, title: "liked"),
                          );
                      },
                      child: const VideoActionWidget(
                          icon: Icons.add, title: "My list")),
                  sizedHeight,
                  // const VideoActionWidget(
                  //     icon: Icons.play_arrow, title: "Play"),
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}

class VideoActionWidget extends StatelessWidget {
  
  

  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

class FastLaghVideoPlayer extends StatefulWidget {
  final String? videoPlayer;
  final void Function(bool isPlaying) onChanged;
  const FastLaghVideoPlayer(
      {super.key, this.videoPlayer, required this.onChanged});

  // Uri get videourls => videourls;

  @override
  State<FastLaghVideoPlayer> createState() => _FastLaghVideoPlayerState();
}

class _FastLaghVideoPlayerState extends State<FastLaghVideoPlayer> {
  late VideoPlayerController videoPlayerController;
  
  @override
  void initState() {
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(videourls[1]));
    videoPlayerController.initialize().then((value) {
      setState(() {});
      videoPlayerController.play();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: videoPlayerController.value.aspectRatio,
              child: VideoPlayer(videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();

    super.dispose();
  }
}
