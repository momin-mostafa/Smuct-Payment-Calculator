import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/models/model.dart';

List<Widget> inputForm(data) {
  return [
    customTextField(data, data.name, "name"),
    customTextField(data, data.id, "ID"),
    customTextField(data, data.departmentName, "Department Name"),
    customTextField(data, data.sscResult, "SSC GPA"),
    customTextField(data, data.hscResult, "HSC GPA"),
  ];
}

Widget customTextField(RegistrationPageModelOne data, controller, name) {
  return TextField(
    decoration: InputDecoration(label: Text(name)),
    controller: controller,
  );
}
