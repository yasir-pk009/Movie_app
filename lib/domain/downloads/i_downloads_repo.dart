import 'package:dartz/dartz.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';
import 'package:netflix_project/domain/core/failure/main_failure.dart';

// abstract class IdownloadsRepo{
//    Future<Either<__MainFailure,List<Downloads>>> getDownloads();
// }


// import 'package:dartz/dartz.dart'; // Import the dartz package for Either

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<DownloadsModel>>> getDownloads();
}



