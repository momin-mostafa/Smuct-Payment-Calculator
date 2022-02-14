import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/firebase_functions/init_firebase_user.dart';
// import 'package:payment_calc_smuct/firebase_functions/create_user.dart';
import 'package:payment_calc_smuct/models/model.dart';
// import 'package:payment_calc_smuct/screens/Home/home_screen.dart';
import 'package:payment_calc_smuct/screens/login_page.dart';
import 'package:payment_calc_smuct/widgets/Registration_widgets/user_input_format.dart';
// import 'package:payment_calc_smuct/widgets/custom_button_for_waiver.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final RegistrationPageModelOne data = RegistrationPageModelOne();
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
            firebaseInitSendUserData(data, const LoginPage());
          },
          child: const Text("submit"),
        ),
      ]),
    );
  }
}
