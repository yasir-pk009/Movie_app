part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<DownloadsModel> downloads,
    required Option<Either<MainFailure, List<DownloadsModel>>> optionStatusCheck,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: false,
      optionStatusCheck: None(),
      downloads: [],
    );
  }
}

