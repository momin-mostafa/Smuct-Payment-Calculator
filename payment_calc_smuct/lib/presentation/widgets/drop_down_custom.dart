import 'package:flutter/material.dart';
// import '../drop_down_menu.dart';
// import 'package:get/get.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({Key? key}) : super(key: key);

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String dropdownValue = 'CSE'; // default value of the menu
  List<String> dropdownItem = ['CSE', 'CSIT'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: dropdownValue, //setting default value
          items: dropdownItem.map((value) {
            // mapping all the elements in dropdown items.
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 20,
                ),
              ),
            );
          }).toList(),
          onChanged: (value) {
            if (value == "CSE") {
              // print('it works');
            } else if (value == "CSIT") {
              // print('It works too.');
            }
            setState(() {
              dropdownValue = value!;
            });
          },
        ),
      ),
    );
  }
}
