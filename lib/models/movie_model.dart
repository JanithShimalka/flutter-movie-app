class MovieModel {
  String image;
  String bgimage;
  String name;
  String date;
  int id;
  String? release_date;
  double voteaverage;
  MovieModel({
    required this.image,
    required this.bgimage,
    required this.name,
    required this.date,
    required this.id,
    required this.voteaverage,
    this.release_date,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      image: json['poster_path'],
      bgimage: json['backdrop_path'],
      name: json['title'],
      date: json['release_date'],
      id: json['id'],
      voteaverage: json['vote_average'],
      release_date: json['release_date'],
    );
  }
}
