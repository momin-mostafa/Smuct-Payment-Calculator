import 'package:flutter/material.dart';
// import 'package:payment_calc_smuct/controller/cost_controller.dart';
import 'package:get/get.dart';
import 'package:payment_calc_smuct/ui.dart';

class DemoFirstPage extends StatelessWidget {
  const DemoFirstPage({Key? key}) : super(key: key);
  // CostController a = CostController(
  //     semesterfeeTotal: 1200, registrationFee: 200, waiverPercentage: 1);
  final double input1 = 20600, input2 = 2000, input3 = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100,
        height: 100,
        color: Colors.green,
        child: TextButton(
          child: const Text(
            "data",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Get.to(const Home(), arguments: [input1, input2, input3]);
          },
        ),
      ),
    );
  }
}
