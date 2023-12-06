import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/core/api_end_points.dart';
import 'package:netflix_project/domain/core/failure/main_failure.dart';
import 'package:netflix_project/domain/hotandnew%20/hotandnewrep.dart';
import 'package:netflix_project/domain/hotandnew%20/model/hotandnewmodel.dart';

@LazySingleton(as: Hotandnewrep)
class HotandnewImp extends Hotandnewrep {
  @override
  Future<Either<MainFailure, MovieModel>> gethotandnewMovieData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
          print(response.statusCode.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = MovieModel.fromJson(response.data);
        print("response data" + result.toString());
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioException catch (e) {
      print("${e.toString()} this catch exPtion");
      return const Left(MainFailure.clientServer());
    } 
  }

  // @override
  // Future<Either<MainFailure, MovieModel>> gethotandnewTV() async {
  //   try {
  //     final Response response =
  //         await Dio(BaseOptions()).get(ApiEndPoints.hotandnewTV);

  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       print(response.statusCode.toString());
  //       final result = MovieModel.fromJson(response.data);
  //         print("response data" + result.toString());
  //       return Right(result);
  //     } else {
  //       return const Left(MainFailure.serverFailure());
  //     }
  //   } catch (e) {
  //     print("${e.toString()} this catch exPtion");
  //     return const Left(MainFailure.clientServer());
  //   }
  // }
}
