import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_calc_smuct/models/basic_model.dart';
import 'widgets/custom_card.dart';
// import 'models/basic_model.dart';
import 'controller/cost_controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // // TODO: implement a proper model after reciving data from niger ma'am.
    // DemoModel demoModel = DemoModel(
    //   totalSemesterFee: 20600, // change this two variables to
    var dataController =
        Get.put(CostController(18400.toDouble(), 2000.toDouble()));

    return Scaffold(
      appBar: AppBar(
        title: const Text('SMUCT Fee Calculator'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          customCard(
            customTitle: "Total (Semester Fee)",
            value: dataController.data.total,
          ),
          customCard(
            customTitle: "Reg Fee",
            value: dataController.data.regFee,
          ),
          customCard(
            customTitle: "Waiver",
            value: dataController.data.waiver,
          ),
          customCard(
            customTitle: "Mid",
            value: dataController.data.mid,
          ),
          customCard(
            customTitle: "Final ",
            value: dataController.data.finalfee,
          ),
          Container(
            width: size.width,
            margin: const EdgeInsets.all(20),
            // color: Colors.red,
            alignment: Alignment.centerRight,
            child: Text(
              "Total = " + dataController.data.finalAmmount.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
          customCard(
            customTitle: 'Reg + Total',
            value: dataController.data.regAndTotal,
            tileColor: Colors.blueAccent,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
