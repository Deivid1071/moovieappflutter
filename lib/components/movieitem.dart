import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tmdbmovieapp/models/movie.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  final Function onClick;

  const MovieItem(this.movie, {@required this.onClick});

  @override
  Widget build(BuildContext context) {
    final array = movie.releaseDate.split("-");

    debugPrint(array.toString());

    return Card(
      child: ListTile(
        onTap: () => onClick(),
        leading: Image(
          image: NetworkImage(
              'https://image.tmdb.org/t/p/w400${movie.posterPath}'),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('${movie.title}'),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text('Ano de lançamento ${array[0]}'),
        ),
        isThreeLine: true,
      ),
    );
  }
}
