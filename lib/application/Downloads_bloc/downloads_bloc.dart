// import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
// import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/core/failure/main_failure.dart';
import 'package:netflix_project/domain/downloads/i_downloads_repo.dart';
// import 'package:netflix_project/domain/core/failure/main_failure.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';




@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo downloadsRepo;
  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(isLoading: true, optionStatusCheck: none()));

      final downloadsOption = await downloadsRepo.getDownloads();
  
    //  print(" THS IS LOGED ${downloadsOption.toString()}");

      
      emit(downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false, optionStatusCheck: some(Left(failure))),
          (downloadList) => state.copyWith(
              isLoading: false, optionStatusCheck: some(Right(downloadList)),downloads: downloadList)));
    });
  }
}
