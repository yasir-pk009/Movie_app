part of 'fast_lagh_bloc.dart';

@freezed
class FastLaghState with _$FastLaghState {
  const factory FastLaghState({
    required List<DownloadsModel> downloadList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory FastLaghState.initial() {
    return const FastLaghState(
      downloadList: [],
      isLoading: true,
      isError: false,
    );
  }
}
