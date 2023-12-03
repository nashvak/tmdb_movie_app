import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_app/constants/constants.dart';
import 'package:tmdb_app/screens/details_screen.dart';

class CarouselImages extends StatelessWidget {
  const CarouselImages({
    super.key,
    required this.snapshot,
  });
  final AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (context, index, pageViewIndex) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    movie: snapshot.data[index],
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 300,
                width: 200,
                child: Image.network(
                  '${Constants.imagePath}${snapshot.data[index].posterPath}',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 250,
          autoPlay: true,
          viewportFraction: 0.55,
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          pageSnapping: true,
          autoPlayAnimationDuration: const Duration(seconds: 1),
        ),
      ),
    );
  }
}
