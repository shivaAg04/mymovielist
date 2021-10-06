import 'package:flutter/material.dart';

import '../models/movie.dart';

class MovieDetailPage extends StatelessWidget {
  // final int movieIndex;
  // MovieDetailPage(this.movieIndex);
  @override
  Widget build(BuildContext context) {
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
                hintText: ' Description ',
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
