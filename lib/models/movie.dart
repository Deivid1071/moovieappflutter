class Movie implements Comparable<Movie> {
  String posterPath;
  bool adult;
  String overview;
  String releaseDate;
  List<int> genreIds;
  int id;
  String originalTitle;
  String originalLanguage;
  String title;
  String backdropPath;
  double popularity;
  double voteCount;
  bool video;
  double voteAverage;
  List<String> arrayDate;
  int ano;

  Movie({
    this.posterPath,
    this.adult,
    this.overview,
    this.releaseDate,
    this.genreIds,
    this.id,
    this.originalTitle,
    this.originalLanguage,
    this.title,
    this.backdropPath,
    this.popularity,
    this.voteCount,
    this.video,
    this.voteAverage,
  });

  @override
  int compareTo(Movie other) {
    int yearDiference = ano - other.ano;

    return yearDiference != 0
        ? yearDiference
        : other.title.compareTo(this.title);
  }


  Movie.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalTitle = json['original_title'];
    originalLanguage = json['original_language'];
    title = json['title'];
    backdropPath = json['backdrop_path'];
    popularity = json['popularity'];
    voteCount = json['vote_count'].toDouble();
    video = json['video'];
    voteAverage = json['vote_average'].toDouble();
    arrayDate = releaseDate.split("-");
    ano = int.parse(arrayDate[0]);
  }
}
