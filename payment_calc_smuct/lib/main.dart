import 'dart:io';
import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/screens/first_page.dart';
// import 'demo_first_page.dart';
// import 'ui.dart';
import 'package:window_size/window_size.dart';
// import 'screens/welcome.dart';
import 'screens/first_page.dart';
import 'package:get/get.dart';
// import 'drop_down_menu.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle("My App");
    setWindowMinSize(const Size(414, 736));
    setWindowMaxSize(const Size(414, 736));
  }
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
    return const GetMaterialApp(
      home: SafeArea(
        // child: Home(),
        // child: DropDownButtonClass(),
        child: LoginDemo(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
