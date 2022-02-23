import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_calc_smuct/data/firebase_functions/init_firebase_user.dart';
import 'package:payment_calc_smuct/data/models/model.dart';
import 'package:payment_calc_smuct/presentation/screens/login_page.dart';
import 'package:payment_calc_smuct/presentation/screens/result_input_page.dart';

class ConfirmationPage extends StatelessWidget {
  ConfirmationPage({Key? key}) : super(key: key);
  final prevPageData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const double elevation = 5;
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: height / 5,
            width: width / 1.1,
            child: Card(
              // color: Colors.green[400],
              elevation: elevation,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Are You A Fresher ?",
                      style: TextStyle(
                        fontSize: width * 0.06,
                        // color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: height / 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            final RegistrationPageModelTwo data =
                                RegistrationPageModelTwo();
                            data.newIntakeCredit.text = '9';
                            data.prevTotalRegisteredCredit.text = '9';
                            data.retakeCredit.text = '0';
                            data.previousSemesterResult.text = '9';
                            firebaseStudentModelInitSendUserDataAndGoToNextPage(
                              modeldata: prevPageData[0],
                              modelDatatwo: data,
                              gotoPage: const LoginPage(),
                            );
                          },
                          child: const Text("Yes"),
                        ),
                        SizedBox(
                          width: width / 6,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(const ResultsInputPage(),
                                arguments: prevPageData);
                          },
                          child: const Text("No"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
