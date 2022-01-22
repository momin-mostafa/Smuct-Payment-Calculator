import 'package:flutter/material.dart';
// import 'package:payment_calc_smuct/models/model.dart';
// import 'package:payment_calc_smuct/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginWrapper extends StatefulWidget {
  const LoginWrapper({Key? key}) : super(key: key);

  @override
  _LoginWrapperState createState() => _LoginWrapperState();
}

class _LoginWrapperState extends State<LoginWrapper> {
  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  late Future<int> _data;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
