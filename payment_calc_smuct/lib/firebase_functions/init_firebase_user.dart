import 'create_user.dart';
import 'package:payment_calc_smuct/models/model.dart';
import 'package:get/get.dart';

void firebaseInitSendUserData(modeldata, gotoPage) {
  final user = FirebaseStudentModel(
    id: modeldata.id.text,
    name: modeldata.name.text,
    departmentName: modeldata.departmentName.text,
    hscResult: double.parse(modeldata.hscResult.text),
    registrationFee: 2000,
    semesterfeeTotal: 18400,
    sscResult: double.parse(modeldata.sscResult.text),
  );
  createUser(user).then((value) => Get.to(gotoPage));
}
