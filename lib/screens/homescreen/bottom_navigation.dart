import 'package:flutter/material.dart';
import 'package:tmdb_app/screens/homescreen/homescreen.dart';
import 'package:tmdb_app/screens/search/search_screen.dart';
import 'package:tmdb_app/screens/talk_and_laugh/laugh.dart';
import 'package:tmdb_app/screens/talk_and_laugh/talk.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

int myIndex = 0;

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: myIndex,
        children: [
          HomeScreen(),
          SearchScreen(),
          Talk(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.black,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        enableFeedback: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'News')
        ],
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
      ),
    );
  }
}
