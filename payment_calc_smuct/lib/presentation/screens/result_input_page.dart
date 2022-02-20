import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/core/models/model.dart';
import 'package:payment_calc_smuct/presentation/screens/registration_page.dart';
import 'package:payment_calc_smuct/presentation/widgets/Registration_widgets/user_input_format.dart';
import 'package:get/get.dart';

class ResultsInputPage extends StatefulWidget {
  const ResultsInputPage({Key? key}) : super(key: key);

  @override
  _ResultsInputPageState createState() => _ResultsInputPageState();
}

class _ResultsInputPageState extends State<ResultsInputPage> {
  RegistrationPageModelTwo data = RegistrationPageModelTwo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          inputFormResult(data),
          ElevatedButton(
            onPressed: () {
              Get.to(const RegistrationPage(), arguments: data);
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
