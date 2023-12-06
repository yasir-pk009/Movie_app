part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {required bool isLoading,
      required List<SearchResultData> searchResultList,
      required List<DownloadsModel> idleList,
      required bool isError}) = _SearchState;
  factory SearchState.initial() {
    return const SearchState(
      isError: false,
      searchResultList: [],
       idleList: [],
      isLoading: true,
    );
  }
}
