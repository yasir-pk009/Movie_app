import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientServer() = ClientServer;
  const factory MainFailure.serverFailure() = ServerFailure;
}
