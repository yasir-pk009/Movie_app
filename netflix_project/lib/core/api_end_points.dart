import 'package:netflix_project/core/constanc.dart';
import 'package:netflix_project/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kbaseUrl/popular?api_key=$api_key";
  static const search = "$kbaseUrl/movie/upcoming?api_key=$api_key";
  static const hotandnew = "https://api.themoviedb.org/3/discover/movie?api_key=9cbf8b595e9d95663e27682c78c2fad3#";
  static const hotandnewTV = "$kbaseUrl/discover/tv?api_key=$api_key";
}

