import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_app/screens/search/search_idle.dart';

class TopsearchItems extends StatelessWidget {
  const TopsearchItems({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
          width: screenwidth * 0.35,
          height: 65,
        ),
        const Expanded(
            child: Text(
          'Movie name',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 23,
            child: Center(
              child: Icon(
                CupertinoIcons.play_fill,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
