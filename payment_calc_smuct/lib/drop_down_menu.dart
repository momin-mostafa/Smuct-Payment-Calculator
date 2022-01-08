import 'package:flutter/material.dart';

class DropDownButtonClass extends StatefulWidget {
  const DropDownButtonClass({Key? key}) : super(key: key);

  @override
  _DropDownButtonClassState createState() => _DropDownButtonClassState();
}

class _DropDownButtonClassState extends State<DropDownButtonClass> {
  String dropdownValue = 'None'; // default value of the menu
  List<String> dropdownItem = ['None', 'two', 'three', 'four'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
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
          setState(() {
            dropdownValue = value!;
          });
        },
      ),
    );
  }
}
