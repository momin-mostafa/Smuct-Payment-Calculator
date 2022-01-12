import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/models/model.dart';
// import '../models/model.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // Student data = Student(listOfAvailableWaiver: [0.0]);
  // TextEditingController hscResult = TextEditingController();
  Student data = Student();

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Page"),
      ),
      body: ListView(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: "data.hscResult",
              labelText: "HSC RESULT",
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              data.hscResult = value;
              // data.hscresultInit();
            },
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: "data.sscResult",
              labelText: "SSC RESULT",
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              data.sscResult = value;
              // data.hscresultInit();
            },
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: "data.previousTotalregisterd credit",
              labelText: "prev.total registered credit",
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              data.prevTotalRegisteredCredit = value;
              // data.hscresultInit();
            },
          )
        ],
      ),
    );
  }
}
