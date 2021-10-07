import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/movies.dart';

class movieListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mListData = Provider.of<Movies>(context);
    final mList = mListData.gMlist;

    return ListView.builder(
      itemCount: mList.length,
      itemBuilder: (_, i) {
        return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: ListTile(
            title: Text(
              mList[i].MName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              mList[i].MDiscription,
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Icon(Icons.arrow_right),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            dense: true,

            onTap: () {
              Navigator.pushNamed(
                context,
                '/movieDetailPage',
                arguments: mList[i].MName,
              );
            },

            // Handle your onTap here.
          ),
        );
      },
    );
  }
}
