import 'package:flutter/material.dart';
import 'package:tmdbmovieapp/components/movieitem.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.movie_filter),
        title: Text('Lista de Filmes Encontrados'),
      ),
      body: MovieItem(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        'Titulo do filme',
        'Data de lançamento',
      ),
    );
  }
}
