



import 'package:dartz/dartz.dart';
import 'package:netflix_project/domain/core/failure/main_failure.dart';
// import 'package:netflix_project/domain/downloads/models/downloads.dart';
import 'package:netflix_project/domain/search/model/search_model.dart';

abstract class HomeRepository {
  Future<Either<MainFailure, SearchModel >> getHomeImages();
}

