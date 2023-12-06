import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/fastLagh/fastLagh_bloc/fast_lagh_bloc.dart';
import 'package:netflix_project/presentation/fastLaght/widget/screen_scroll_item.dart';

class ScreenFastAndLaugh extends StatelessWidget {
  const ScreenFastAndLaugh({super.key, });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<FastLaghBloc>(context).add(const Initialized());
      },
    );

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaghBloc, FastLaghState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text(
                  "An error occurred. Please try again later.",
                  style: TextStyle(color: Colors.red),
                ),
              );
            } else if (state.downloadList.isEmpty) {
              return const Center(
                child: Text(
                  "Video List is empty",
                  style: TextStyle(color: Colors.grey),
                ),
              );
            } else {
              return PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: state.downloadList.length,
                itemBuilder: (context, index) {
                  return ScrollItemWidgetInherited(
                    widget: ScreenScrollItem(index: index),
                    movieData: state.downloadList[index],
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
