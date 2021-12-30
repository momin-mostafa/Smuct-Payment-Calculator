import 'package:get/get.dart';
import 'package:payment_calc_smuct/models/model.dart';

class CostController extends GetxController {
  var data = DataModel();
  CostController({
    required double semesterfeeTotal,
    required double registrationFee,
    required double waiverPercentage,
  }) {
    data.total = semesterfeeTotal;
    data.waiver = (waiverPercentage / 100) * data.total;
    data.finalAmmount = data.total - data.waiver;
    data.regFee = registrationFee;
    data.mid = (data.finalAmmount / 2) + data.regFee;
    data.finalfee = data.finalAmmount / 2;
    data.regAndTotal = data.finalAmmount + data.regFee;
  }
}
