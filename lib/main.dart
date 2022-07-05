import 'package:flutter/material.dart';
import 'package:movies/screens/gallery.dart';
import 'package:movies/screens/home_screen.dart';
import 'package:movies/screens/information_screen.dart';
import 'package:movies/screens/listview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
