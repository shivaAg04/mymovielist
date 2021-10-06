import 'package:flutter/material.dart';

import '../models/movie.dart';

List<Movie> mmlist = [
  Movie('shivaa', 'best movie'),
  // Movie('one', 'best movie'),
  // Movie('Raone', 'wrost movie'),
  // Movie('twone', 'average  movie'),
];

class Movies with ChangeNotifier {
  List<Movie> _mlist = [
    Movie('shivaa', 'best movie'),
    Movie('one', 'best movie'),
    //   Movie('Raone', 'wrost movie'),
    //   Movie('twone', 'average  movie'),
  ];

  List<Movie> get gMlist {
    return [...mmlist];
  }

  // void addMovie<Movie>(a, b) {
  //   _mlist.add(
  //     Movies(a, b),
  //   );
  //   notifyListeners();
  // }
}
