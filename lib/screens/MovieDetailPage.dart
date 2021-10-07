import 'package:flutter/material.dart';
import 'package:movie_app/Provider/movies.dart';
import 'package:provider/provider.dart';

import '../models/movie.dart';

class MovieDetailPage extends StatelessWidget {
  // final int movieIndex;
  // MovieDetailPage(this.movieIndex);
  @override
  Widget build(BuildContext context) {
    final movieId = ModalRoute.of(context).settings.arguments;
    final loadedMovie = Provider.of<Movies>(context)
        .gMlist
        .firstWhere((element) => element.MName == movieId);
    print(movieId);

    return Scaffold(
      appBar: AppBar(
        title: Text('My Movie Details '),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "    Name ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixText: loadedMovie.MName,
                hintText: 'Name of the Movie ',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "    Description ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixText: loadedMovie.MDiscription,
                hintText: loadedMovie.MDiscription,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {},
            color: Theme.of(context).primaryColor,
            child: Text('Delete Movie'),
          )
        ],
      ),
    );
  }
}
