import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/custom_card.dart';
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
    var data = Get.arguments;
    var dataController = Get.put(CostController(
      semesterfeeTotal: data[0],
      registrationFee: data[1],
      waiverPercentage: data[2],
    ));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
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
            tileColor: Colors.deepOrangeAccent,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
