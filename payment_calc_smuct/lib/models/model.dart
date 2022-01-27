class DataModel {
  // used for cost controller.
  double total = 0;
  double waiver = 0;
  double finalAmmount = 0;
  double regFee = 0;
  double mid = 0;
  double finalfee = 0;
  double regAndTotal = 0;
  double additionalWaiver = 0;
}

class SharedPrefModel {
  double hscResult = 0;
  double sscResult = 0;
  double prevCourseIntake = 0;
  String userID = "Registered";
  String userPass = "Pass Word";
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
  String semesterfeeTotal = "0"; // firebase or storage
  String registrationFee = "0"; // firebase or storage
  String waiverPercentage = "0"; //highest waiver
  String previousSemesterResult = "0"; // firebase or storage
  List<double> listOfAvailableWaiver = []; // dean info.
  String sscResult = "0"; // User Input
  String hscResult = "0"; // User Input
  bool sscGolden = false; //user Input or firebase
  bool hscGolden = false; // User input or firebase
  String prevTotalRegisteredCredit = "0"; // firebase
  String newIntakeCredit = "0"; // firebase
  String retakeCredit = "0"; //
  String additionalWaiver = "0";
}

class CostControllerWrapper {
  double semesterfeeTotal = 0;
  double registrationFee = 0;
  // required double waiverPercentage,
  double additionalWaiver = 0;
  double previousSemesterResult = 0;
  List<double> listOfAvailableWaiver = [];
  double sscResult = 0;
  double hscResult = 0;
  double prevTotalRegisteredCredit = 0;
  double newIntakeCredit = 0;
  double retakeCredit = 0;
  bool sscGolden = false;
  bool hscGolden = false;
}
