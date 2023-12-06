import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/core/failure/main_failure.dart';
import 'package:netflix_project/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';

part 'fast_lagh_event.dart';
part 'fast_lagh_state.dart';

part 'fast_lagh_bloc.freezed.dart';


ValueNotifier <Set<int>>   likedVideoNotifier = ValueNotifier({});

@injectable
class FastLaghBloc extends Bloc<FastLaghEvent, FastLaghState> {
  final IDownloadsRepo downloadsRepo;
  FastLaghBloc(this.downloadsRepo) : super(FastLaghState.initial()) {
    // ignore: void_checks
    on<Initialized>((event, emit) async {
      // return const FastLaghState(
      //     downloadList: [], isLoading: false, isError: false);

      final results = await downloadsRepo.getDownloads();
      final stateResult = results.fold((MainFailure failure) {
        return const FastLaghState(
          downloadList: [],
          isLoading: false,
          isError: true,
        );
      }, (List<DownloadsModel> list) {
        return FastLaghState(
          downloadList: list,
          isLoading: false,
          isError: false,
        );
      });
     emit(stateResult);
    });
    on<Liked>((event, emit) {
      
   likedVideoNotifier.value.add(event.id);



    });
    on<Unliked>((event, emit) {
       likedVideoNotifier.value.remove(event.id);

    });
  }
}
