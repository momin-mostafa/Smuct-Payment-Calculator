import 'package:flutter/material.dart';
import 'widgets/customCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _total = 20600;
    double _waiver = (30 / 100) * _total;
    double _finalAmmount = _total - _waiver;
    double _regFee = 2000;
    double _mid = (_finalAmmount / 2) + _regFee;
    double _final = _finalAmmount / 2;
    double _regAndTotal = _finalAmmount + _regFee;
    return Scaffold(
      appBar: AppBar(
        title: const Text('SMUCT Fee Calculator'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          customCard(Title: "Total (Semester Fee)", value: _total),
          customCard(Title: "Reg Fee", value: _regFee),
          customCard(Title: "Waiver", value: _waiver),
          customCard(Title: "Mid", value: _mid),
          customCard(Title: "Final ", value: _final),
          Container(
            width: size.width,
            margin: const EdgeInsets.all(20),
            // color: Colors.red,
            alignment: Alignment.centerRight,
            child: Text(
              "Total = " + _finalAmmount.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
          customCard(
            Title: 'Reg + Total',
            value: _regAndTotal,
            tile_color: Colors.blueAccent,
            text_color: Colors.white,
          ),
        ],
      ),
    );
  }
}
