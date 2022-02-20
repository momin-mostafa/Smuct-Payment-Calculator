import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_calc_smuct/presentation/screens/Payment/payment_page.dart';
import 'package:payment_calc_smuct/presentation/widgets/home_screen_custom_card.dart';
import 'package:payment_calc_smuct/core/functions/custom_shared_pref.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  final pref = CustomSharedPreferencesGetterSetter();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              // currentAccountPicture: _userPicture,
              accountName: Text("KM Tanvir Anjum @DemoName"),
              accountEmail: Text("Demo@ID"),
              // decoration: BoxDecoration(color: UIColor.homeAppBar),
            ),
            // customCard('Icons/Teacher.png', 'Teacher\'s Contact Info', () {
            //   Get.to(const AboutTeacher());
            // }),
            // CustomCard('Icons/CR.png', 'CR Contact Info', () {
            //   Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => CRPage()));
            // }),
            // CustomCard('Icons/ClassCode.png', 'Google Class Code', () {
            //   // Navigator.push(
            //   //     context, MaterialPageRoute(builder: (context) => CRPage()));
            //   // TODO add Google Class Room PDF Viewer.
            // }),
            customCard('Icons/CourseOffer.png', "Course Offer", () {}),
            customCard('Icons/Routine.png', "Routine", () {}),
            customCard('Icons/Result.png', "Results ", () {}),
            customCard('Icons/calculator.png', "Payment Calculator", () {
              Get.to(PaymentPage());
            })
          ],
        ),
      ),
    );
  }
}
