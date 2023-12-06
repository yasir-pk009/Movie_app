part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required bool isLoading,
    required bool isError,
    required,
    required List<HotAndNewData> comingSoonList,
      
    

  }) = _HotandnewState;

  factory HotandnewState.initial() {
    return  const HotandnewState(
        isLoading: true, isError: false,comingSoonList: []);
  }
}
