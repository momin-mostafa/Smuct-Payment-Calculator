import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/core/functions/custom_shared_pref.dart';
import 'package:payment_calc_smuct/domain/payment_logic/cost_controller.dart';
import 'package:payment_calc_smuct/presentation/widgets/custom_card.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({Key? key}) : super(key: key);
  // PaymentPage() {}

  final CustomSharedPreferencesGetterSetter pref =
      CustomSharedPreferencesGetterSetter();

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    widget.pref.setDefault();
    CostController data = CostController(
      semesterfeeTotal: widget.pref.getPrefDataFromDouble("semesterfeeTotal"),
      registrationFee: widget.pref.getPrefDataFromDouble("registrationFee"),
      previousSemesterResult:
          widget.pref.getPrefDataFromDouble("previousSemesterResult"),
      listOfAvailableWaiver: [0],
      sscResult: widget.pref.getPrefDataFromDouble("sscResult"),
      hscResult: widget.pref.getPrefDataFromDouble("hscResult"),
      prevTotalRegisteredCredit:
          widget.pref.getPrefDataFromDouble("prevTotalRegisteredCredit"),
      newIntakeCredit: widget.pref.getPrefDataFromDouble("newIntakeCredit"),
      retakeCredit: widget.pref.getPrefDataFromDouble("retakeCredit"),
    );
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Payment Page'), centerTitle: true),
      body: ListView(children: [
        Card(
          child: ListTile(
            title: Center(
                child: Text(
              widget.pref.getPrefDataFromFeild("DepartmentName"),
              style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        customCard(
          customTitle: "Total (Semester Fee)",
          value: data.getTotal(),
        ),
        customCard(
          customTitle: "Reg Fee",
          value: data.getRegFee(),
        ),
        customCard(
          customTitle: "Waiver",
          value: data.getWaiver(),
        ),
        customCard(
          customTitle: "Mid",
          value: data.getMid(),
        ),
        customCard(
          customTitle: "Final ",
          value: data.getFinalFee(),
        ),
        Container(
          width: size.width,
          margin: const EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          child: Text(
            "Total = " + data.getFinalAmmount().toString(),
            style: const TextStyle(fontSize: 20),
          ),
        ),
        customCard(
          customTitle: 'Reg + Total',
          value: data.getRegAndTotal(),
          tileColor: Colors.deepOrangeAccent,
          textColor: Colors.white,
        ),
      ]),
    );
  }
}
