import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieCards extends StatelessWidget {
  const MovieCards({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.aBeeZee(fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: Colors.amber,
                    height: 100,
                    width: 200,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
