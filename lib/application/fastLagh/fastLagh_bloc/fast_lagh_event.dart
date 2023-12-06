part of 'fast_lagh_bloc.dart';

@freezed
class FastLaghEvent with _$FastLaghEvent {
  const factory FastLaghEvent.Initialized() = Initialized;
    const factory FastLaghEvent.liked({required int id}) = Liked;
      const factory FastLaghEvent.unliked({required int id}) = Unliked;
}