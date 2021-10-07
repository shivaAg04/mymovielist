import 'package:flutter/material.dart';

import '../models/movie.dart';

class Movies with ChangeNotifier {
  List<Movie> _mlist = [
    Movie('shivaa', 'best movie'),
    Movie('one', 'best movie'),
    Movie('Raone', 'wrost movie'),

    //   Movie('twone', 'average  movie'),
  ];

  List<Movie> get gMlist {
    return [..._mlist];
  }

  void addMovie(String a, String b) {
    gMlist.add(Movie(a, b));
    notifyListeners();
  }
}
