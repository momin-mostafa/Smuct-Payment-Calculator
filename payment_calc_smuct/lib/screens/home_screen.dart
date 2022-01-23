import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/screens/payment_page.dart';
// import 'package:payment_calc_smuct/screens/payment_page.dart';
import 'package:payment_calc_smuct/widgets/custom_grid_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: ListView(
        children: [
          CustomTileHome(
            onTapPage: const PaymentPage(),
            color: Colors.orange[900],
          ),
        ],
      ),
    );
  }
}
