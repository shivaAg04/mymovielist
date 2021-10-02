import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './Provider/movies.dart';
import './screens/MovieDetailPage.dart';
import './screens/MovieEditPage.dart';

import 'screens/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Movies(),
      child: MaterialApp(
        title: 'Movie App ',
        theme: ThemeData(primaryColor: Colors.yellow),
        home: first_page(),
        routes: {
          '/movieEditPage': (ctx) => MovieEditPage(),
          '/movieDetailPage': (ctx) => MovieDetailPage(),
        },
      ),
    );
  }
}
