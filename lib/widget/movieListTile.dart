import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/movies.dart';

class movieListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MlistData = Provider.of<Movies>(context);
    final Mlist = MlistData.Mlist;

    return ListView.builder(
      itemCount: Mlist.length,
      itemBuilder: (_, i) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // red as border color.
            ),
          ),
          child: ListTile(
            title: Text(
              Mlist[i].MName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              Mlist[i].MDiscription,
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Icon(Icons.arrow_right),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            dense: true,

            onTap: () {
              Navigator.pushNamed(context, '/movieDetailPage');
            },

            // Handle your onTap here.
          ),
        );
      },
    );
  }
}
