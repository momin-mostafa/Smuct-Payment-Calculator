import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_calc_smuct/models/model.dart';
import 'package:payment_calc_smuct/screens/home.dart';

//import 'widgets/custom_card.dart';
//import 'widgets/custom_card2.dart';
// import 'dart:ui';

class LoginDemo extends StatefulWidget {
  const LoginDemo({Key? key}) : super(key: key);

  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  // var color;
  Student data = Student();
  String departmentName = "Please Select a Department";
  // TextEditingController sscResult = TextEditingController();
  String dropdownValue = 'Select Department';
  List<String> dropdownItem = ['Select Department', 'CSE', 'CSIT'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        centerTitle: true,
        title: const Text("Input Page"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: () {
          Get.to(const Home(), arguments: [
            double.parse(data.semesterfeeTotal),
            double.parse(data.registrationFee),
            double.parse(data.previousSemesterResult),
            double.parse(data.prevTotalRegisteredCredit),
            double.parse(data.newIntakeCredit),
            double.parse(data.retakeCredit),
            data.listOfAvailableWaiver,
            double.parse(data.sscResult),
            double.parse(data.hscResult),
            data.sscGolden,
            data.hscGolden,
            // double.parse(data.additionalWaiver),
            departmentName,
          ]);
        },
        child: const Icon(Icons.navigate_next_sharp),
      ),
      body: ListView(
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.only(top: 60.0),
          //   child: Center(
          //     child: Container(
          //         width: 200,
          //         height: 150,
          //         /*decoration: BoxDecoration(
          //             color: Colors.red,
          //             borderRadius: BorderRadius.circular(50.0)),*/
          //         child: Image.asset('asset/images/flutter-logo.png')),
          //   ),
          // ),
          // const Padding(
          //   padding:
          //       EdgeInsets.only(left: 15.0, right: 15.0, top: 10, bottom: 0),
          //   //padding: EdgeInsets.symmetric(horizontal: 15),

          //   child: TextField(
          //     decoration: InputDecoration(
          //       border: OutlineInputBorder(),
          //       labelText: 'Name',
          //       hintText: 'Enter Full Name',
          //     ),
          //   ),
          // ),
          // const Padding(
          //   padding: EdgeInsets.only(
          //       left: 15.0, right: 15.0, top: 10.0, bottom: 0),
          //   //padding: EdgeInsets.symmetric(horizontal: 15),

          //   child: TextField(
          //     decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //         labelText: 'ID',
          //         hintText: 'Enter valid id (number only)'),
          //   ),
          // ),
          // const Padding(
          //   padding: EdgeInsets.only(
          //       left: 15.0, right: 15.0, top: 10.0, bottom: 10),
          //   //padding: EdgeInsets.symmetric(horizontal: 15),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       border: OutlineInputBorder(),
          //       labelText: 'Email',
          //       hintText: 'Enter valid email id as tamim@gmail.com',
          //     ),
          //   ),
          // ),
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber[600],
            ),
            child: ListTile(
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
                      data.semesterfeeTotal = "20600";
                      data.registrationFee = "2000";
                      departmentName = "Department of CSE";
                    } else if (value == "CSIT") {
                      data.semesterfeeTotal = "18400";
                      data.registrationFee = "2000";
                      departmentName = "Department of CSIT";
                    }

                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 10, bottom: 10),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              // obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'SSC result',
                hintText: '5.00',
              ),

              keyboardType: TextInputType.number,
              onChanged: (value) {
                data.sscResult = value;
              },
            ),
          ),
          ListTile(
            //padding: EdgeInsets.symmetric(horizontal: 15),
            title: TextField(
              //obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'HSC result',
                  hintText: '5.00'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                data.hscResult = value;
              },
            ),
          ),
          ListTile(
            title: TextField(
              //obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Prev Total Registered Credit',
                  hintText: '14.00'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                data.prevTotalRegisteredCredit = value;
              },
            ),
          ),
          // ListTile(
          //   title: TextField(
          //     // obscureText: true,
          //     decoration: const InputDecoration(
          //       border: OutlineInputBorder(),
          //       labelText: 'Inatake Credit',
          //       hintText: '9.00',
          //     ),
          //     keyboardType: TextInputType.number,
          //     onChanged: (value) {
          //       data.newIntakeCredit = value;
          //     },
          //   ),
          // ),
          ListTile(
            title: TextField(
              // obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Retake Credit',
                hintText: '9.00',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                data.retakeCredit = value;
              },
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //       left: 15.0, right: 15.0, top: 10, bottom: 10),
          //   //padding: EdgeInsets.symmetric(horizontal: 15),
          //   child: TextField(
          //     // obscureText: true,
          //     decoration: const InputDecoration(
          //       border: OutlineInputBorder(),
          //       labelText: 'Additional',
          //       hintText: '!!!',
          //     ),
          //     keyboardType: TextInputType.number,
          //     onChanged: (value) {
          //       data.additionalWaiver = value;
          //     },
          //   ),
          // ),
          ListTile(
            title: TextField(
              // obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Previous Semester result',
                hintText: 'Enter previous result out of 4',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => data.previousSemesterResult = value,
            ),
          ),
        ],
      ),
    );
  }
}
