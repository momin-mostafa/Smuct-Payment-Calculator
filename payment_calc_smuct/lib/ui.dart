import 'package:flutter/material.dart';
import 'widgets/custom_card.dart';
import 'model/basic_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement a proper model after reciving data from niger ma'am.
    DemoModel demoModel = DemoModel(
      totalSemesterFee: 20600, // change this two variables to
      registrationFee: 2000, // get different department costs.
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('SMUCT Fee Calculator'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          customCard(
              customTitle: "Total (Semester Fee)", value: demoModel.total),
          customCard(customTitle: "Reg Fee", value: demoModel.regFee),
          customCard(customTitle: "Waiver", value: demoModel.waiver),
          customCard(customTitle: "Mid", value: demoModel.mid),
          customCard(customTitle: "Final ", value: demoModel.finalfee),
          Container(
            width: size.width,
            margin: const EdgeInsets.all(20),
            // color: Colors.red,
            alignment: Alignment.centerRight,
            child: Text(
              "Total = " + demoModel.finalAmmount.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
          customCard(
            customTitle: 'Reg + Total',
            value: demoModel.regAndTotal,
            tileColor: Colors.blueAccent,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
