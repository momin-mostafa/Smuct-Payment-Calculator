import 'package:payment_calc_smuct/controller/student_waiver.dart';
import 'package:payment_calc_smuct/models/model.dart';

class CostController {
  final DataModel _data = DataModel();
  CostController({
    // required String departmentName,
    required double semesterfeeTotal,
    required double registrationFee,
    // required double waiverPercentage,
    double additionalWaiver = 0,
    required double previousSemesterResult,
    required List<double> listOfAvailableWaiver,
    required double sscResult,
    required double hscResult,
    required double prevTotalRegisteredCredit,
    required double newIntakeCredit,
    required double retakeCredit,
    bool sscGolden = false,
    bool hscGolden = false,
  }) {
    _data.total = semesterfeeTotal;
    // _data.waiver = (waiverPercentage / 100) * _data.total;
    double waiverPercentage = StudentWaiverController(
            previousSemesterResult: previousSemesterResult,
            listOfAvailableWaiver: listOfAvailableWaiver,
            sscResult: sscResult,
            hscResult: hscResult,
            prevTotalRegisteredCredit: prevTotalRegisteredCredit,
            newIntakeCredit: newIntakeCredit,
            retakeCredit: retakeCredit)
        .getTotalWaiver();
    _data.waiver = (waiverPercentage / 100) * _data.total;
    _data.finalAmmount = _data.total - _data.waiver;
    _data.regFee = registrationFee;
    _data.mid = (_data.finalAmmount / 2) + _data.regFee;
    _data.finalfee = _data.finalAmmount / 2;
    _data.regAndTotal = (_data.finalAmmount + _data.regFee);
  }
  double getTotal() {
    return _data.total;
  }

  double getWaiver() {
    return _data.waiver;
  }

  double getFinalAmmount() {
    return _data.finalAmmount;
  }

  double getRegFee() {
    return _data.regFee;
  }

  double getMid() {
    return _data.mid;
  }

  double getFinalFee() {
    return _data.finalfee;
  }

  double getRegAndTotal() {
    return _data.regAndTotal;
  }
}
