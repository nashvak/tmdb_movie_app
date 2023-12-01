import 'package:flutter/material.dart';
import 'package:tmdb_app/colors/colors.dart';
import 'package:tmdb_app/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutFlix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Appcolors.scaffoldBgColor,
      ),
      home: const HomeScreen(),
    );
  }
}
// 9ef722807f4bbe265b99f7c183ead2fa