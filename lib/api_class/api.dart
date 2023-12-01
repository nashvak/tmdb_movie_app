import 'dart:convert';

import 'package:tmdb_app/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MovieApi {
  static const API_KEY = "9ef722807f4bbe265b99f7c183ead2fa";
  static const trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=$API_KEY';
  Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(trendingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('something happened');
    }
  }
}
