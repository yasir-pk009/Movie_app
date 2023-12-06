


import 'package:dartz/dartz.dart';
import 'package:netflix_project/domain/core/failure/main_failure.dart';
import 'package:netflix_project/domain/hotandnew%20/model/hotandnewmodel.dart';
// import 'package:netflix_project/presentation/Search/screen_result.dart';

abstract class Hotandnewrep {


  Future<Either<MainFailure,MovieModel>>gethotandnewMovieData ();
  //  Future<Either<MainFailure,MovieModel>>gethotandnewTV ();
}