import 'create_user.dart';
import 'package:payment_calc_smuct/models/model.dart';
import 'package:get/get.dart';

void firebaseInitSendUserData(data, page) {
  final user = FirebaseStudentModel(
    id: data.id.text,
    name: data.name.text,
    departmentName: data.departmentName.text,
    hscResult: double.parse(data.hscResult.text),
    registrationFee: 2000,
    semesterfeeTotal: 18400,
    sscResult: double.parse(data.sscResult.text),
  );
  createUser(user).then((value) => Get.to(page));
}
