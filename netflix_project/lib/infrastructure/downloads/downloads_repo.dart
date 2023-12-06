// import 'dart:convert';

// import 'dart:convert'

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/core/api_end_points.dart';
// import 'package:netflix_project/core/api_end_points.dart';
import 'package:netflix_project/domain/core/failure/main_failure.dart';
import 'package:netflix_project/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';



@LazySingleton(as: IDownloadsRepo)
class DownloadRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<DownloadsModel>>> getDownloads() async {
    try {
      // print("GETTING RESPONSE");
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);

      if (response.statusCode == 200 || response.statusCode == 201) {


        final List<DownloadsModel> downloadList =
            (response.data["results"] as List).map((e) {
          return DownloadsModel.fromJson(e);
        }).toList();
        
        return Right(downloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print("${e.toString()} this catch exPtion");
      return const Left(MainFailure.clientServer());
    }
  }
}
