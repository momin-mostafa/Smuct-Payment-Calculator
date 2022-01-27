import 'package:flutter/material.dart';

Widget customCard(String pathToImage, String title, Function onTapFunction) {
  return Card(
    elevation: 4,
    child: ListTile(
      leading: Image.asset(
        pathToImage,
        height: 30,
      ),
      // leading: Icon(Icons.school),
      title: Text(title),
      onTap: () => onTapFunction(),
    ),
  );
}
