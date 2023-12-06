// ignore_for_file: non_constant_identifier_names, duplicate_ignore, camel_case_types

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/core/api_end_points.dart';
import 'package:netflix_project/domain/core/failure/main_failure.dart';
import 'package:netflix_project/domain/search/model/search_model.dart';
import 'package:netflix_project/domain/search/seach_repository.dart';
@LazySingleton(as: SearchRepositoy)
class searchRepimly implements SearchRepositoy {
  // ignore: non_constant_identifier_names
  @override
  Future<Either<MainFailure, SearchModel>> SearchMovies(
      {required String movieQuery}) async {
    try {
      // print("GETTING RESPONSE");
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.search,
        queryParameters: {
          'query': movieQuery,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchModel.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print("${e.toString()} this catch exPtion");
      return const Left(MainFailure.clientServer());
    }
  }
}
