import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// import 'package:netflix_project/domain/core/failure/main_failure.dart';
import 'package:netflix_project/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';
import 'package:netflix_project/domain/search/model/search_model.dart';
import 'package:netflix_project/domain/search/seach_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';




@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo downloadsRepo;
  final SearchRepositoy searchRepositoy;
  SearchBloc(this.downloadsRepo, this.searchRepositoy)
      : super(SearchState.initial()) {
    on<Initialized>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(
          state.copyWith(
              isError: false,
              isLoading: false,
              idleList: state.idleList,
              searchResultList: []),
        );
        
      }
      final result = await downloadsRepo.getDownloads();
     final  stateResult =   result.fold((l) {
        return const SearchState(
          isLoading: false,
          searchResultList: [],
          idleList: [],
          isError: true,
        );
      }, (r) {
        return  SearchState(
          isLoading: false,
          searchResultList: [],
          idleList: r,
          isError: false,
        );
      
      });
      emit(stateResult);
    });

    on<SearchMovie>((event, emit) async{
         emit(
          state.copyWith(
              isError: false,
              isLoading: false,
              idleList: state.idleList,
              searchResultList: []),
        );
      final result =
       await searchRepositoy.SearchMovies(movieQuery: event.movieQuery);
     final _state =  result.fold((l) {
          return const SearchState(
          isLoading: false,
          searchResultList: [],
          idleList: [],
          isError: true,
        );

       }, (r)  {
     
         return  SearchState(
          isLoading: false,
          searchResultList: r.results,
          idleList: [],
          isError: true,
        );
        

       });
       emit(_state);

    });

  }
}
