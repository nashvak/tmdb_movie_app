import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmdb_app/api_class/api.dart';
import 'package:tmdb_app/models/movie_model.dart';
import 'package:tmdb_app/widgets/carousel.dart';
import 'package:tmdb_app/widgets/movie_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Movie>> trendingMovies;
  @override
  void initState() {
    super.initState();
    trendingMovies = MovieApi().getTrendingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/flutflix.png',
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          height: 40,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending movies',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: FutureBuilder(
                  future: trendingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          snapshot.error.toString(),
                        ),
                      );
                    } else if (snapshot.hasData) {
                      return CarouselImages(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const MovieCards(
                title: 'Top rated movies',
              ),
              const MovieCards(
                title: 'Upcoming movies',
              ),
              const MovieCards(
                title: 'Drama',
              ),
              const MovieCards(
                title: 'Comedy',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
