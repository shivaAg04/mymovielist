import 'package:flutter/material.dart';

import '../widget/movieListTile.dart';

class first_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Movie List'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 370,
              child: movieListTile(),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/movieEditPage',
                );
              },
              child: Text('Add Movie'),
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
