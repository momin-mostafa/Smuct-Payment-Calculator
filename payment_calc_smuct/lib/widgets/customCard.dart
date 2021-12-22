import 'package:flutter/material.dart';

Widget customCard({
  required String Title,
  required double value,
  double elevationRate = 13,
  Color tile_color = Colors.white,
  Color text_color = Colors.black,
}) {
  return Card(
    color: tile_color,
    elevation: elevationRate,
    child: ListTile(
      title: Text(
        Title,
        style: TextStyle(color: text_color),
      ),
      trailing: Text(
        value.toString() + "/-",
        style: TextStyle(color: text_color),
      ),
    ),
  );
}
