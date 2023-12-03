import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmdb_app/colors/colors.dart';
import 'package:tmdb_app/constants/constants.dart';
import 'package:tmdb_app/models/movie_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors.scaffoldBgColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              leading: Container(
                margin: const EdgeInsets.only(left: 10, top: 10),
                color: Colors.black,
                // height: 70,
                // width: 70,
                // child: Padding(
                // padding: EdgeInsets.all(5),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
              ),
              expandedHeight: 450,
              pinned: true,
              floating: true,
              backgroundColor: Appcolors.scaffoldBgColor,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  movie.title.toString(),
                  style: GoogleFonts.belleza(
                      fontSize: 17, fontWeight: FontWeight.w500),
                ),
                background: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  child: Image.network(
                    '${Constants.imagePath}${movie.posterPath}',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text(
                      'Overview',
                      style: GoogleFonts.openSans(
                          fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      movie.overview,
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'Release Date:${movie.releaseDate}',
                              style: GoogleFonts.roboto(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Rating',
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Appcolors.ratingColor,
                                ),
                                Text(
                                    '${movie.voteAverage.toStringAsFixed(1)}/10')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
