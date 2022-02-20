import 'package:flutter/material.dart';

Widget customCard({
  required String customTitle,
  required double value,
  double elevationRate = 13,
  Color tileColor = Colors.white,
  Color textColor = Colors.black,
}) {
  return Card(
    color: tileColor,
    elevation: elevationRate,
    child: ListTile(
      title: Text(
        customTitle,
        style: TextStyle(color: textColor),
      ),
      trailing: Text(
        value.toString() + "/-",
        style: TextStyle(color: textColor),
      ),
    ),
  );
}
