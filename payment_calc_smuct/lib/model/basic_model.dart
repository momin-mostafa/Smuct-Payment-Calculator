class DemoModel {
  double total = 0;
  double waiver = 0;
  double finalAmmount = 0;
  double regFee = 0;
  double mid = 0;
  double finalfee = 0;
  double regAndTotal = 0;
  DemoModel(
      {required double totalSemesterFee, required double registrationFee}) {
    total = totalSemesterFee;
    waiver = (30 / 100) * total;
    finalAmmount = total - waiver;
    regFee = registrationFee;
    mid = (finalAmmount / 2) + regFee;
    finalfee = finalAmmount / 2;
    regAndTotal = finalAmmount + regFee;
  }
}
