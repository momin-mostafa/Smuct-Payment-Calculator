import 'package:get/get.dart';
import 'package:payment_calc_smuct/models/model.dart';

class CostController extends GetxController {
  var data = DataModel();
  CostController({
    required double semesterfeeTotal,
    required double registrationFee,
    required double waiverPercentage,
    double additionalWaiver = 0,
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

class StudentWaiverController {
  var data = StudentDataModel();
  double _total = 0;
  // double _totalCredit = 0;
  StudentWaiverController({
    required double previousSemesterResult,
    required List<double> listOfAvailableWaiver,
    required double sscResult,
    required double hscResult,
    required double prevTotalRegisteredCredit,
    required double newIntakeCredit,
    required double retakeCredit,
    double additionalWaiver = 0,
    bool sscGolden = false,
    bool hscGolden = false,
  }) {
    // init
    data.prevResults = previousSemesterResult;
    // data.prevSemesterBasedScholarship
    data.highestWaiver = Waiver(listOfAvailableWaiver).highesetWaiver();
    data.sscResult = sscResult;
    data.hscResult = hscResult;
    data.sscHscResultsBasedScholarship = SscHscScholarship(
      hsc: hscResult,
      sscGolden: sscGolden,
      hscGolden: hscGolden,
      ssc: sscResult,
    ).getSchollarship();
    data.prevTotalCredit = prevTotalRegisteredCredit;
    data.prevNewIntake = newIntakeCredit;
    data.retakeCredit = retakeCredit;
    data.additionalWaiver = additionalWaiver;

    //logic
    if (previousSemesterResult >= 3) {
      //if newIntake is more than 9 credit.
      if (_moreThanNineCredit()) {
        if (data.highestWaiver > data.sscHscResultsBasedScholarship) {
          _total = data.highestWaiver;
        } else if (data.highestWaiver < data.sscHscResultsBasedScholarship) {
          _total = data.sscHscResultsBasedScholarship;
        } else {
          _total = data.highestWaiver;
        }
      }
    } else {
      _total = 0;
    }
    if (_total >= 100) {
      _total = 100;
    } else if (_total < 100) {
      _total += data.additionalWaiver;
    }
  }

  bool _moreThanNineCredit() {
    data.prevNewIntake = data.prevTotalCredit - data.retakeCredit;
    if (data.prevNewIntake >= 9) {
      return true;
    }
    return false;
  }

  double getTotalWaiver() {
    return _total;
  }
}

class Waiver {
  double _hightestWaiver = 0;
  //.. all kind of waiver
  Waiver(List<double> list) {
    if (list.isNotEmpty) {
      if (list.length >= 2) {
        for (var waiver in list) {
          if (_hightestWaiver <= waiver) {
            _hightestWaiver = waiver;
          }
        }
      }
      if (list.length == 1) {
        _hightestWaiver = list[0];
      }
    } else {
      _hightestWaiver = 0;
    }
  }
  double highesetWaiver() {
    return _hightestWaiver;
  }
}

//for non fdt & AMMT dept
class SscHscScholarship {
  double _total = 0;
  double _avg = 0;
  double _waiver = 0;
  bool sscGolden = false;
  bool hscGolden = false;
  SscHscScholarship({
    double hsc = 0,
    double ssc = 0,
    this.sscGolden = false,
    this.hscGolden = false,
  }) {
    _total = hsc + ssc;
    _avg = _total / 2;
    if (_avg >= 3 && _avg <= 3.99) {
      _waiver = 10;
    } else if (_avg >= 4 && _avg <= 4.49) {
      _waiver = 20;
    } else if (_avg >= 4.5 && _avg <= 4.99) {
      _waiver = 30;
    } else if (_avg >= 5) {
      if (_twoGolden()) {
        _waiver = 100;
      } else if (_oneGolden() || !_oneGolden()) {
        _waiver = 60;
      }
    }
  }
  bool _twoGolden() {
    if (sscGolden && hscGolden) {
      return true;
    }
    return false;
  }

  bool _oneGolden() {
    // if only hsc golden counts then edit below code.
    if (sscGolden || hscGolden) {
      return true;
    }
    return false;
  }

  double getSchollarship() {
    return _waiver;
  }
}
