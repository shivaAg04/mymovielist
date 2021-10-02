import 'package:flutter/material.dart';

class MovieEditPage extends StatelessWidget {
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
          Text('Name',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
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
          Text('Description',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
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
            child: Text('Add Movie'),
          )
        ],
      ),
    );
  }
}
