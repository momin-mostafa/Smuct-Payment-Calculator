import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Page'),
      ),
      body: Container(
        child: ListView(children: const [
          Card(
            child: ListTile(
              title: Center(
                  child: Text(
                "TODO payment page implementation.",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ),
          // customCard(
          //   customTitle: "Total (Semester Fee)",
          //   value: dataController.getTotal(),
          // ),
          // customCard(
          //   customTitle: "Reg Fee",
          //   value: dataController.getRegFee(),
          // ),
          // customCard(
          //   customTitle: "Waiver",
          //   value: dataController.getWaiver(),
          // ),
          // customCard(
          //   customTitle: "Mid",
          //   value: dataController.getMid(),
          // ),
          // customCard(
          //   customTitle: "Final ",
          //   value: dataController.getFinalFee(),
          // ),
          // Container(
          //   width: size.width,
          //   margin: const EdgeInsets.all(20),
          //   // color: Colors.red,
          //   alignment: Alignment.centerRight,
          //   child: Text(
          //     "Total = " + dataController.getFinalAmmount().toString(),
          //     style: const TextStyle(fontSize: 20),
          //   ),
          // ),
          // customCard(
          //   customTitle: 'Reg + Total',
          //   value: dataController.getRegAndTotal(),
          //   tileColor: Colors.deepOrangeAccent,
          //   textColor: Colors.white,
          // ),
        ]),
      ),
    );
  }
}
