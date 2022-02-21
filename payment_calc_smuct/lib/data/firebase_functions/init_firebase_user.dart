import 'create_user.dart';
import 'package:payment_calc_smuct/data/models/model.dart';
import 'package:get/get.dart';

void firebaseInitSendUserData(RegistrationPageModelOne modeldata,
    RegistrationPageModelTwo modelDatatwo, gotoPage) {
  final user = FirebaseStudentModel(
    id: modeldata.id.text,
    name: modeldata.name.text,
    departmentName: modeldata.departmentName.text,
    hscResult: double.parse(modeldata.hscResult.text),
    registrationFee: 2000,
    semesterfeeTotal: 18400,
    sscResult: double.parse(modeldata.sscResult.text),
    newIntakeCredit: double.parse(modelDatatwo.newIntakeCredit.text),
    prevTotalRegisteredCredit:
        double.parse(modelDatatwo.prevTotalRegisteredCredit.text),
    previousSemesterResult:
        double.parse(modelDatatwo.previousSemesterResult.text),
    retakeCredit: double.parse(modelDatatwo.retakeCredit.text),

    // prevTotalRegisteredCredit: double.parse()//TODO parse all data.
  );
  createUser(user).then((value) => Get.to(gotoPage));
}
