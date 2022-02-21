import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_calc_smuct/data/models/model.dart';
import 'package:payment_calc_smuct/presentation/screens/confirmation_page.dart';
import 'package:payment_calc_smuct/presentation/widgets/Registration_widgets/user_input_format.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final RegistrationPageModelOne data = RegistrationPageModelOne();
  // var regPageTwoData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(children: inputForm(data)),
        ElevatedButton(
          onPressed: () {
            Get.to(ConfirmationPage(), arguments: data);
            // firebaseInitSendUserData(data, regPageTwoData, const LoginPage());
          },
          child: const Text("submit"),
        ),
      ]),
    );
  }
}
