import 'package:flutter/material.dart';

Widget customTextFiledForLoginPage({
  required TextEditingController controller,
  required String lable,
  required String hintText,
  required TextInputType inputType,
  required bool obscurity,
}) {
  return Card(
    elevation: 5,
    child: ListTile(
      title: TextField(
        keyboardType: inputType,
        controller: controller,
        obscureText: obscurity,
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
