import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:tmdbmovieapp/models/movie.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    debugPrint('Resquest');
    debugPrint('url: ${data.baseUrl}');
    debugPrint('headers: ${data.headers}');
    debugPrint('body: ${data.body}');
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    debugPrint('Response');
    debugPrint('url: ${data.statusCode}');
    debugPrint('headers: ${data.headers}');
    debugPrint('body: ${data.body}');
    //print(data);
    return data;
  }
}

final Client client = HttpClientWithInterceptor.build(
  interceptors: [LoggingInterceptor()],
);
const String _apiKey = 'd7aebb08ea53848cae0e9453a1731313';

Future<List<Movie>> findAll(String searchQuery) async {  
  final Response response = await client
      .get(
          'https://api.themoviedb.org/3/search/movie?api_key=$_apiKey&language=pt-BR&query=$searchQuery')
      .timeout(Duration(seconds: 10));
  final Map decodedJson = jsonDecode(response.body);
  final List<Movie> movies = List();

  if (decodedJson.containsKey('results') && decodedJson['results'].length > 0) {
    (decodedJson['results'])
        .forEach((movie) => movies.add(Movie.fromJson(movie)));
  }
  
   movies.sort((a, b) {
       return b.releaseDate.toLowerCase().compareTo(a.releaseDate.toLowerCase());
     });
  
  return movies;
}
