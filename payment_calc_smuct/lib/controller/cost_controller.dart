import 'package:get/get.dart';
import 'package:payment_calc_smuct/models/basic_model.dart';

class CostController extends GetxController {
  // var input1;
  // var input2;
  var data = DataModel();
  CostController(var semesterfeeTotal, var registrationFee) {
    data.total = semesterfeeTotal;
    data.waiver = (30 / 100) * data.total;
    data.finalAmmount = data.total - data.waiver;
    data.regFee = registrationFee;
    data.mid = (data.finalAmmount / 2) + data.regFee;
    data.finalfee = data.finalAmmount / 2;
    data.regAndTotal = data.finalAmmount + data.regFee;
  }
  // void setController(double semesterfeeTotal, double registrationFee) {
  //   input1 = semesterfeeTotal;
  //   input2 = registrationFee;
  //   pData = DemoModel(totalSemesterFee: input1, registrationFee: input2).obs;
  // }
}
