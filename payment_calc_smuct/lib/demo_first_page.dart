import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_calc_smuct/screens/home.dart';
import 'models/model.dart';

class DemoFirstPage extends StatefulWidget {
  const DemoFirstPage({Key? key}) : super(key: key);

  @override
  State<DemoFirstPage> createState() => _DemoFirstPageState();
}

class _DemoFirstPageState extends State<DemoFirstPage> {
  String dropdownValue = 'CSE';
  List<String> dropdownItem = ['CSE', 'CSIT'];
  final InputModel _inputModel = InputModel();
  String valueTwo = '0%';
  List<String> itemsTwo = ['0%', '10%', '20%', '30%', '40%', '50%'];

  // var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SMUCT Students Payment Calculation"),
        centerTitle: true,
      ),
      // body: Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.green,
      //   child: TextButton(
      //     child: const Text(
      //       "data",
      //       style: TextStyle(color: Colors.white),
      //     ),
      //     onPressed: () {
      //       // Get.to(const Home(), arguments: [input1, input2, input3]);
      //     },
      //   ),
      // ),
      body: ListView(
        children: [
          ListTile(
            title: DropdownButtonHideUnderline(
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
                    _inputModel.semesterFee = 20600;
                    _inputModel.registrationFee = 2000;
                  } else if (value == "CSIT") {
                    _inputModel.semesterFee = 18400;
                    _inputModel.registrationFee = 2000;
                  }
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
            ),
          ),
          ListTile(
            title: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: valueTwo, //setting default value
                items: itemsTwo.map((e) {
                  // mapping all the elements in dropdown items.
                  return DropdownMenuItem<String>(
                    value: e,
                    child: Text(
                      e,
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 20,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value == "10%") {
                    _inputModel.waiver = 10;
                  } else if (value == "20%") {
                    _inputModel.waiver = 20;
                  } else if (value == "30%") {
                    _inputModel.waiver = 30;
                  } else if (value == "40%") {
                    _inputModel.waiver = 40;
                  } else if (value == "50%") {
                    _inputModel.waiver = 50;
                  } else {
                    _inputModel.waiver = 0;
                  }
                  setState(() {
                    valueTwo = value!;
                  });
                },
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                //TODO: Executing point.
                Get.to(const Home(), arguments: [
                  _inputModel.semesterFee,
                  _inputModel.registrationFee,
                  _inputModel.waiver
                ]);
              },
              child: const Text("Submit"))
        ],
      ),
    );
  }
}

// class Student {
//   double semesterfeeTotal = 0;
//   double registrationFee = 0;
//   double waiverPercentage = 0;
//   double previousSemesterResult = 0;
//   List<double> listOfAvailableWaiver = [];
//   double sscResult = 0;
//   double hscResult = 0;
//   double prevTotalRegisteredCredit = 0;
//   double newIntakeCredit = 0;
// }
