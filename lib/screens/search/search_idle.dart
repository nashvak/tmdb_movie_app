import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_app/screens/search/widgets/title.dart';
import 'package:tmdb_app/screens/search/widgets/topsearch_items.dart';

const imageUrl =
    "https://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

class ScreenAfterSearch extends StatelessWidget {
  const ScreenAfterSearch({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(
          title: 'Top Searches',
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const TopsearchItems();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
