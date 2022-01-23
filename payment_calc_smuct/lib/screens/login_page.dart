import 'package:flutter/material.dart';
import 'home_screen.dart';
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
        title: const Text("LoginPage"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const HomePage());
        },
      ),
    );
  }
}
