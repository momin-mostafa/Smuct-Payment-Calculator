import 'package:flutter/material.dart';
import 'package:payment_calc_smuct/data/firebase_functions/init_firebase_user.dart';
import 'package:payment_calc_smuct/data/models/model.dart';
import 'package:payment_calc_smuct/presentation/screens/login_page.dart';
import 'package:payment_calc_smuct/presentation/widgets/Registration_widgets/user_input_format.dart';
import 'package:get/get.dart';

class ResultsInputPage extends StatefulWidget {
  const ResultsInputPage({Key? key}) : super(key: key);

  @override
  _ResultsInputPageState createState() => _ResultsInputPageState();
}

class _ResultsInputPageState extends State<ResultsInputPage> {
  RegistrationPageModelTwo data = RegistrationPageModelTwo();
  final prevPageData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          inputFormResult(data),
          ElevatedButton(
            onPressed: () {
              // Get.to(const RegistrationPage(), arguments: data);
              // init firebase here
              firebaseStudentModelInitSendUserDataAndGoToNextPage(
                  modeldata: prevPageData[0],
                  modelDatatwo: data,
                  gotoPage: const LoginPage());
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
