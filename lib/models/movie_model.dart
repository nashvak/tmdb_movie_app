class Movie {
  final String title;
  String backdropPath;
  String originalTitle;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final double voteAverage;
  Movie(
      {required this.title,
      required this.backdropPath,
      required this.overview,
      required this.posterPath,
      required this.releaseDate,
      required this.voteAverage,
      required this.originalTitle});
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["title"],
      backdropPath: json["backdrop_path"],
      overview: json["overview"],
      posterPath: json["poster_path"],
      releaseDate: json["release_date"],
      voteAverage: json["vote_average"],
      originalTitle: json["original_title"],
    );
  }
}
