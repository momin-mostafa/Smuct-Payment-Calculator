import 'package:flutter/material.dart';

Widget customTextFiledForLoginPage(TextEditingController controller,
    String lable, String hintText, TextInputType inputType) {
  return Card(
    elevation: 5,
    child: ListTile(
      title: TextField(
        keyboardType: inputType,
        controller: controller,
        decoration: InputDecoration(
          labelText: lable,
          hintText: hintText,
          focusColor: Colors.cyan[400],
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue[100]!,
              width: 2,
            ),
          ),
        ),
      ),
    ),
  );
}
