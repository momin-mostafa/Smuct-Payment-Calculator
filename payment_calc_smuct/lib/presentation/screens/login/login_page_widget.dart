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
      backgroundColor: Colors.blue[200],
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
          child: Card(
            color: Colors.blue.shade100,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('Images/login_screen_background_image.png'),
            ),
          ),
        ),
        const SizedBox(height: 20),
        customTextFiledForLoginPage(
          controller: email,
          lable: 'Email',
          hintText: 'student@example.com',
          inputType: TextInputType.emailAddress,
          obscurity: false,
        ),
        customTextFiledForLoginPage(
          controller: password,
          lable: 'Password',
          hintText: 'Ab@123',
          inputType: TextInputType.number,
          obscurity: true,
        ),
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
        TextButton(
          onPressed: () {},
          child: const Text(
            'Register',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
      // ),
      // )
      // ],
    ),
  );
}
