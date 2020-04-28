import 'dart:core';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tmdbmovieapp/components/iconandtext.dart';
import 'package:tmdbmovieapp/models/movie.dart';

class Detail extends StatelessWidget {
  final Movie movie;

  const Detail(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.movie_filter),
            Text('Detalhes do filme'),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.longestSide / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.network(
                            'https://image.tmdb.org/t/p/w400${movie.posterPath}',
                            height: 240.0,
                            width: 240.0,
                          ),
                        ),
                        Text(
                          movie.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                  height: MediaQuery.of(context).size.longestSide / 3,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.longestSide / 6,
                          child: SingleChildScrollView(
                            child: Text(
                              movie.overview,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconText(Icons.thumb_up,
                                movie.voteAverage.toString(), 'Nota'),
                            IconText(
                                Icons.star_border,
                                movie.voteCount.toString(),
                                'Estrelas recebidas'),
                            IconText(
                                Icons.date_range,
                                DateFormat("d/M/y")
                                    .format(DateTime.parse(movie.releaseDate)),
                                'Lançamento'),
                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

//new DateFormat.yMd("pt_BR").format(DateTime.parse(movie.releaseDate))
