import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const imageUrl =
    "https://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

class ScreenAfterSearch extends StatelessWidget {
  const ScreenAfterSearch({super.key});
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Searches',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
