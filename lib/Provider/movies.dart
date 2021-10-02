import 'package:flutter/material.dart';

import '../models/movie.dart';

class Movies with ChangeNotifier {
  List<Movie> _Mlist = [
    Movie('shiva', 'best movie'),
    Movie('one', 'best movie'),
    Movie('Raone', 'wrost movie'),
    Movie('twone', 'average  movie'),
  ];

  List<Movie> get Mlist {
    [..._Mlist];
  }
}
