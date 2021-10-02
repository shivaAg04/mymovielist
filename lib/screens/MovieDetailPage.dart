import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name of the Movie ',
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
                    EdgeInsets.symmetric(vertical: 100, horizontal: 20),
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
