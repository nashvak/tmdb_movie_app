import 'dart:convert';
import 'package:tmdb_app/constants/constants.dart';
import 'package:tmdb_app/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MovieApi {
  static const trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.API_KEY}';

  static const topRatedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.API_KEY}';
  // static const upcomingUrl =
  //     'https://api.themoviedb.org/3/popular?api_key=9ef722807f4bbe265b99f7c183ead2fa';
  static const upcomingUrl =
      'https://api.themoviedb.org/3/movie/now_playing?api_key=${Constants.API_KEY}';

  //

  Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(trendingUrl));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('something happened');
    }
  }

  //

  Future<List<Movie>> getTopratedMovies() async {
    final response = await http.get(Uri.parse(topRatedUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('something happened');
    }
  }

  //
  Future<List<Movie>> getUpcomingMovies() async {
    final response = await http.get(Uri.parse(upcomingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('something happened');
    }
  }
}
