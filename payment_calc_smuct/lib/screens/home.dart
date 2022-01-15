import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_card.dart';
import '../controller/cost_controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

// implement data as structured. // must find a better solution.
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var data = Get.arguments;
    var dataController = Get.put(CostController(
      semesterfeeTotal: data[0],
      registrationFee: data[1],
      previousSemesterResult: data[2], //todo change data
      prevTotalRegisteredCredit: data[3], //todo change data
      newIntakeCredit: data[4], //todo change data
      retakeCredit: data[5], //todo change data
      listOfAvailableWaiver: data[6], // todo change data
      sscResult: data[7], //todo change data
      hscResult: data[8], //todo change data
      sscGolden: data[9], //todo change data
      hscGolden: data[10], //todo change data
      // additionalWaiver: data[11],
      departmentName: data[11],
    ));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: const Text('SMUCT Fee Calculator'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Center(
                  child: Text(
                data[11],
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ),
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
          // debug button
          // TextButton(
          //   onPressed: () {
          //     for (var item in data) {
          //       print(item);
          //     }
          //   },
          //   child: const Text('show data'),
          // )
        ],
      ),
    );
  }
}
