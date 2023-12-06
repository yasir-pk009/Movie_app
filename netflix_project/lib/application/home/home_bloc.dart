import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';
// import 'package:netflix_project/infrastructure/downloads/downloads_repo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IDownloadsRepo downloadsRepo;
  HomeBloc(this.downloadsRepo) : super(HomeState.initial()) {
    on<Initial>((event, emit) async {
      emit(state.copyWith(isLoading: true, homeresultList: [], isError: false));

      final downloadsOption = await downloadsRepo.getDownloads();
      print(downloadsOption);

      downloadsOption.fold((l) {
        return const HomeState(
          isError: true,
          isLoading: false,
          homeresultList: [],
        );
      }, (r) {
        return HomeState(
            isError: false,
            isLoading: false,
            homeresultList: r);
      });
    });
  }
}
