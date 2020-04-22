import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final String image;
  final String filmTitle;
  final String releaseDate;

  const MovieItem(
    this.image,
    this.filmTitle,
    this.releaseDate,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image(
          image: NetworkImage(image),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Titulo do filme $filmTitle'),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text('Data de lançamento $releaseDate'),
        ),
        isThreeLine: true,
      ),
    );
  }
}
