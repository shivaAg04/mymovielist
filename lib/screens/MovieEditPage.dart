import 'package:flutter/material.dart';
import '../widget/movieListTile.dart';

import '../Provider/movies.dart';
import '../models/movie.dart';

class MovieEditPage extends StatefulWidget {
  @override
  _MovieEditPageState createState() => _MovieEditPageState();
}

class _MovieEditPageState extends State<MovieEditPage> {
  final nameController = TextEditingController();

  final descriptionController = TextEditingController();

  List<Movie> test = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add My Movie '),
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
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: TextField(
              controller: nameController,
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
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: TextField(
              controller: descriptionController,
              style: TextStyle(
                height: 5,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'write about the movie  Description ',
                // contentPadding:
                //     EdgeInsets.symmetric(vertical: 100, horizontal: 20),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text('Add Movie'),
            onPressed: () {
              mmlist
                  .add(Movie(nameController.text, descriptionController.text));

              setState(() {
                print(nameController.text);
              });
            },
          ),
        ],
      ),
    );
  }
}
