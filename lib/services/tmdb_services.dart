import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_app_2/models/movie_model.dart';

class Movie_services {
  final String api = "?api_key=206f4bdc58a80317e550efddb30793aa";
  Future<List> nowPlaying() async {
    String nowPlayingUrl = "https://api.themoviedb.org/3/movie/now_playing$api";

    final response = await http.get(Uri.parse(nowPlayingUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      List<dynamic> results = body['results'];
      List<MovieModel> movies =
          results
              .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
              .toList();
      return movies;
    } else {
      return [];
    }
  }
}
