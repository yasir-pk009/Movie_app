// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/core/failure/main_failure.dart';
import 'package:netflix_project/domain/hotandnew%20/hotandnewrep.dart';
import 'package:netflix_project/domain/hotandnew%20/model/hotandnewmodel.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final Hotandnewrep hotandnewrep;
  HotandnewBloc(this.hotandnewrep) : super(HotandnewState.initial()) {
    on<LoadDataInComing>((event, emit) async {

      print("bloc page");
    
      if(state.comingSoonList.isNotEmpty){
          emit(
        state.copyWith(
            isError: false,
            isLoading: true,
            comingSoonList: [],
            ),
      );

      }
      
      final results = await hotandnewrep.gethotandnewMovieData();
      print("${results.toString()} this is result");
      final newState = results.fold((MainFailure failure) {
        return const HotandnewState(
            isLoading: false,
            isError: true,
          
            comingSoonList: []);
      }, (MovieModel moviemodel) {
        return HotandnewState(
            isLoading: false,
            isError: false,
           
            comingSoonList: moviemodel.result);
      });
      emit(newState);
    });

    // on<LoadDataineveryoneisWaching>((event, emit) async{
    //    emit(
    //     state.copyWith(
    //         isError: false,
    //         isLoading: true,
    //         comingSoonList: [],
    //         everyonIswatching: []),
    //   );
      
    //   final results = await hotandnewrep.gethotandnewMovieData();
    //   print("${results.toString()}  THIS IS THE RESU");
    //   final newState = results.fold((MainFailure failure) {
    //     return const HotandnewState(
    //         isLoading: false,
    //         isError: true,
    //         everyonIswatching: [],
    //         comingSoonList: []);
    //   }, (MovieModel moviemodel) {
    //     return HotandnewState(
    //         isLoading: false,
    //         isError: false,
    //         everyonIswatching: state.everyonIswatching,
    //         comingSoonList: moviemodel.result);
    //   });
    //   emit(newState);
    // });
  }
}
