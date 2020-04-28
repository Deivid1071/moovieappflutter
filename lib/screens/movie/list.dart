import 'package:flutter/material.dart';
import 'package:tmdbmovieapp/components/centered_message.dart';
import 'package:tmdbmovieapp/components/movieitem.dart';
import 'package:tmdbmovieapp/components/progress.dart';
import 'package:tmdbmovieapp/models/movie.dart';
import 'package:tmdbmovieapp/screens/movie/detail.dart';
import 'package:tmdbmovieapp/services/api/weclient.dart';

class MovieList extends StatelessWidget {
  final String search;

  const MovieList(this.search);

  @override
  Widget build(BuildContext context) {
    debugPrint(search);
    return Scaffold(
      appBar: AppBar(
          //leading: Icon(Icons.movie_filter),
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.movie_filter),
          Text('Resultados da busca'),
        ],
      )),
      body: FutureBuilder<List<Movie>>(
          future: findAll(search),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return Progress();
                break;
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                if (snapshot.hasData) {
                  final List<Movie> movies = snapshot.data;
                  if (movies.isNotEmpty) {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        final Movie movie = movies[index];
                        return MovieItem(
                          movie,
                          onClick: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Detail(movie),
                              ),
                            );
                          },
                        );
                      },
                      itemCount: movies.length,
                    );
                  }
                }
                return CenteredMessage('No movie found',
                    icon: Icons.sentiment_dissatisfied);
                break;
            }
            return CenteredMessage('Unknow error');
          }),
    );
  }
}
