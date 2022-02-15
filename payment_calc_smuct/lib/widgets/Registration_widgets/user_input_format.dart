import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/models/model.dart';

List<Widget> inputForm(data) {
  return [
    customTextField(
      data: data,
      controllerField: data.name,
      lable: "name",
    ),
    customTextField(
      data: data,
      controllerField: data.id,
      lable: "ID",
    ),
    customTextField(
      data: data,
      controllerField: data.departmentName,
      lable: "Department Name",
    ),
    customTextField(
      data: data,
      controllerField: data.sscResult,
      lable: "SSC GPA",
    ),
    customTextField(
      data: data,
      controllerField: data.hscResult,
      lable: "HSC GPA",
    ),
  ];
}

Widget customTextField({
  required RegistrationPageModelOne data,
  required TextEditingController controllerField,
  required String lable,
}) {
  return TextField(
    decoration: InputDecoration(label: Text(lable)),
    controller: controllerField,
  );
}
