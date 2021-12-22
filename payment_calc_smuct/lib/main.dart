import 'package:flutter/material.dart';
import 'ui.dart';

void main() {
  runApp(const HomeWrapper());
}

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({Key? key}) : super(key: key);

  @override
  _HomeWrapperState createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Home(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
