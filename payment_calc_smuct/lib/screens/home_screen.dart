import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/screens/payment_page.dart';
// import 'package:payment_calc_smuct/screens/payment_page.dart';
import 'package:payment_calc_smuct/widgets/custom_grid_tile.dart';
import 'package:payment_calc_smuct/functions/custom_shared_pref.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pref = CustomSharedPreferencesGetterSetter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return CustomTileHome(
              onTapPage: PaymentPage(),
              color: Colors.orange[900],
              additionalFun: () {},
            );
          }),
    );
  }
}
