class DataModel {
  // used for cost controller.
  double total = 0;
  double waiver = 0;
  double finalAmmount = 0;
  double regFee = 0;
  double mid = 0;
  double finalfee = 0;
  double regAndTotal = 0;
}

class InputModel {
  // for Demo First Page {input model}
  double semesterFee = 0;
  double registrationFee = 0;
  double waiver = 0;
}

/// Student model incomplete.
class StudentDataModel {
  double prevResults = 0.0;
  double prevTotalCredit = 0.0;
  double highestWaiver = 0.0;
  double prevNewIntake = 0.0;
  double sscResult = 0.0;
  double hscResult = 0.0;
  double sscHscResultsBasedScholarship = 0.0;
  double totalWaiver = 0;
  double totalScholarship = 0;
  double retakeCredit = 0;
  double additionalWaiver = 0;

  //future feature.
  // double studentTotalSemesterFee = 0.0;  //for other departments.
  // List availableWaiverPercentage = [0.0]; // have to use Sigle
  // double prevSemesterBasedScholarship // for semester final based scholarship
}

class Student {
  double semesterfeeTotal = 0; // firebase or storage
  double registrationFee = 0; // firebase or storage
  double waiverPercentage = 0; //highest waiver
  double previousSemesterResult = 0; // firebase or storage
  List<double> listOfAvailableWaiver = []; // dean info.
  double sscResult = 0; // User Input
  double hscResult = 0; // User Input
  bool sscGolden = false; //user Input or firebase
  bool hscGolden = false; // User input or firebase
  double prevTotalRegisteredCredit = 0; // firebase
  double newIntakeCredit = 0; // firebase
  double retakeCredit = 0; //
}
