import 'package:bloc_sample_api/api/ApiBaseHelper.dart';
import 'package:bloc_sample_api/api/MovieResponse.dart';

class MovieRepository {
  final String _apiKey = "e6162997209c2eaf74a2ece035ed92a7";

  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Movie>> fetchMovieList() async {
    final response = await _helper.get("movie/popular?api_key=$_apiKey");
    return MovieResponse.fromJson(response).results;
  }
}