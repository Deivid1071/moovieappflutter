

import 'package:flutter/material.dart';
import 'package:tmdbmovieapp/screens/home.dart';
import 'package:tmdbmovieapp/screens/movie/detail.dart';

import 'screens/movie/list.dart';


void main() {
  runApp(MovieApp());
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal[700],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: MovieList(),
    );
  }
}
