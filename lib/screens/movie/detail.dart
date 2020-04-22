import 'package:flutter/material.dart';
import 'package:tmdbmovieapp/components/icondescription.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.movie_filter),
          title: Text('Detalhes sobre o filme')),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    height: 240.0,
                    width: 240.0,
                  ),
                ),
                Text(
                  'Titulo do filme',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/3,
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconText(Icons.sentiment_satisfied, 'popularity'),
                    IconText(Icons.star_border, 'voteCount'),
                    IconText(Icons.thumb_up, 'voteAverage'),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconText(Icons.title, 'originalTitle'),
                    IconText(Icons.comment, 'originalLanguage'),
                    IconText(Icons.date_range, 'releaseDate'),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
