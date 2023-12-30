import 'package:flutter/material.dart';
import 'package:tmdb_app/constants/colors.dart';
import 'package:tmdb_app/screens/homescreen/homescreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
