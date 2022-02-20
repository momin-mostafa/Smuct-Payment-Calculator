import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/presentation/screens/registration_page.dart';
// import 'package:payment_calc_smuct/screens/registration_page.dart';
import 'Home/home_screen.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
      ),
      body: ListView(children: [
        TextButton(
          child: const Text("Login"),
          onPressed: () {},
        ),
        //
        TextButton(
          onPressed: () {
            Get.to(const RegistrationPage());
          },
          child: const Text("Register"),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next_rounded),
        onPressed: () {
          Get.to(HomePage());
        },
      ),
    );
  }
}
