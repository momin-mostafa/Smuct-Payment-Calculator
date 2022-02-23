import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/presentation/widgets/custom_button_for_login_page.dart';
import 'package:payment_calc_smuct/presentation/widgets/login_page_widgets/custom_textfiled.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final id = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            body(email: id, password: password, context: context),
          ],
        ),
      ),
    );
  }
}

Widget body({
  required TextEditingController email,
  required TextEditingController password,
  required BuildContext context,
}) {
  Size size = MediaQuery.of(context).size;
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: size.width / 2,
            child:
                Card(elevation: 5, child: Image.asset('Images/Smuctian.jpg'))),
        const SizedBox(height: 20),
        customTextFiledForLoginPage(
            email, 'Email', 'student@example.com', TextInputType.emailAddress),
        customTextFiledForLoginPage(
            password, 'Password', 'Ab@123', TextInputType.number),
        const SizedBox(height: 20),
        Card(
          child: CustomButton(
            hight: size.height / 20,
            width: size.width / 4,
            ontapFun: () {},
            name: 'Login',
          ),
        ),
        const SizedBox(height: 20),
        // CustomButton(
        //   hight: size.height / 20,
        //   width: size.width / 4,
        //   ontapFun: () {},
        //   name: 'Register',
        // ),
        TextButton(onPressed: () {}, child: const Text('Register')),
      ],
    ),
  );
}
