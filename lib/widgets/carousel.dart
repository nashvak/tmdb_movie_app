import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatelessWidget {
  const CarouselImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: 10,
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 300,
              width: 200,
              color: Colors.red,
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
