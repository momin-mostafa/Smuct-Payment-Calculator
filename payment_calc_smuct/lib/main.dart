import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:neumorphic/neumorphic.dart';
//changed here. with login_page_widget ->->->->->->
import 'package:payment_calc_smuct/presentation/screens/login/login_page_widget.dart';
// import 'package:payment_calc_smuct/presentation/screens/confirmation_page.dart';
// import 'demo_first_page.dart';
// import 'ui.dart';
import 'package:window_size/window_size.dart';
// import 'screens/welcome.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:payment_calc_smuct/presentation/screens/';
// import 'drop_down_menu.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle("My App");
    setWindowMinSize(const Size(414, 736));
    setWindowMaxSize(const Size(414, 736));
  }
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const DemoHomeWrapper());
}

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({Key? key}) : super(key: key);

  @override
  _HomeWrapperState createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: FutureBuilder(
          future: _firebaseApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print("You have an error! ${snapshot.error.toString()}");
              return const Text("Something went wrong.");
            } else if (snapshot.hasData) {
              return const SafeArea(
                // child: Home(),
                // child: DropDownButtonClass(),
                child: LoginPage(),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DemoHomeWrapper extends StatefulWidget {
  const DemoHomeWrapper({Key? key}) : super(key: key);

  @override
  _DemoHomeWrapperState createState() => _DemoHomeWrapperState();
}

class _DemoHomeWrapperState extends State<DemoHomeWrapper> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SafeArea(
        child: LoginPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
