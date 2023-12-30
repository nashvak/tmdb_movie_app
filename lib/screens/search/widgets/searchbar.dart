import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchbarRow extends StatelessWidget {
  const SearchbarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CupertinoSearchTextField(
          placeholder: 'Search movies,series..',
          backgroundColor: Colors.black,
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(CupertinoIcons.xmark_circle_fill),
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
