part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isError,
    required bool isLoading,
    required List<DownloadsModel> homeresultList,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
        homeresultList: [], isError: false, isLoading: false);
  }
}
