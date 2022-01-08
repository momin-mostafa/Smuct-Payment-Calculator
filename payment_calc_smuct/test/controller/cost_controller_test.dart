import 'package:test/test.dart';
import 'package:payment_calc_smuct/controller/cost_controller.dart';

void main() {
  group("SscHscScholarship", () {
    test("below 3", () {
      final waiver = SscHscScholarship(hsc: 2, ssc: 2.9);
      expect(waiver.getSchollarship(), 0);
    });
    test("5-5 hsc golden ", () {
      final waiver = SscHscScholarship(hsc: 5, ssc: 5, hscGolden: true);
      expect(waiver.getSchollarship(), 60);
    });
    test("5-5 SSC golden", () {
      final waiver = SscHscScholarship(hsc: 5, ssc: 5, sscGolden: true);
      expect(waiver.getSchollarship(), 60);
    });
    test("5-5 both golden ", () {
      final waiver =
          SscHscScholarship(hsc: 5, ssc: 5, hscGolden: true, sscGolden: true);
      expect(waiver.getSchollarship(), 100);
    });
    test("5-5 ", () {
      final waiver = SscHscScholarship(hsc: 5, ssc: 5);
      expect(waiver.getSchollarship(), 60);
    });
    test("5-4", () {
      final waiver = SscHscScholarship(hsc: 4.68, ssc: 4.33);
      expect(waiver.getSchollarship(), 30);
    });
    test("4.5-4", () {
      final waiver = SscHscScholarship(hsc: 4, ssc: 4.5);
      expect(waiver.getSchollarship(), 20);
    });
    test("4", () {
      final waiver = SscHscScholarship(hsc: 4, ssc: 4);
      expect(waiver.getSchollarship(), 20);
    });
  });

  group("waiver", () {
    test("highest in 50", () {
      final Waiver waiver = Waiver([20, 10, 40, 50]);
      expect(waiver.highesetWaiver(), 50);
    });
    test("highest in 40", () {
      final Waiver waiver = Waiver([20, 10, 40, 0]);
      expect(waiver.highesetWaiver(), 40);
    });
    test("highest in 30", () {
      final Waiver waiver = Waiver([30, 10, 20, 0]);
      expect(waiver.highesetWaiver(), 30);
    });
    test("highest in 20", () {
      final Waiver waiver = Waiver([10, 10, 0, 20]);
      expect(waiver.highesetWaiver(), 20);
    });
    test("highest in 100", () {
      final Waiver waiver = Waiver([30, 10, 40, 0, 50, 100, 40]);
      expect(waiver.highesetWaiver(), 100);
    });
    test("one element in list", () {
      final Waiver waiver = Waiver([30]);
      expect(waiver.highesetWaiver(), 30);
    });
    test("empty list", () {
      final Waiver waiver = Waiver([]);
      expect(waiver.highesetWaiver(), 0);
    });
  });

  //run some more test on Student waiver controller.
  group("Student Waiver Controller", () {
    test("{3.1 CGPA} {9.1 GPA} {waiver 30} ", () {
      final StudentWaiverController studentWaiverController =
          StudentWaiverController(
        previousSemesterResult: 3.1,
        listOfAvailableWaiver: [0, 30],
        sscResult: 4.68,
        hscResult: 4.33,
        prevTotalRegisteredCredit: 14,
        newIntakeCredit: 14,
        retakeCredit: 0,
      );
      expect(studentWaiverController.getTotalWaiver(), 30);
    });
    test("{3.35 CGPA} {4.26 GPA} {} ", () {
      final StudentWaiverController studentWaiverController =
          StudentWaiverController(
        previousSemesterResult: 3.1,
        listOfAvailableWaiver: [],
        sscResult: 4.78,
        hscResult: 3.75,
        prevTotalRegisteredCredit: 14,
        newIntakeCredit: 14,
        retakeCredit: 0,
      );
      expect(studentWaiverController.getTotalWaiver(), 20);
    });
    test("{3.35 CGPA} {4.26 GPA} {10% corona} ", () {
      final StudentWaiverController studentWaiverController =
          StudentWaiverController(
        previousSemesterResult: 3.1,
        listOfAvailableWaiver: [],
        sscResult: 4.78,
        hscResult: 3.75,
        prevTotalRegisteredCredit: 14,
        newIntakeCredit: 14,
        retakeCredit: 0,
        additionalWaiver: 10,
      );
      expect(studentWaiverController.getTotalWaiver(), 30);
    });
    test("100% waiver", () {
      final StudentWaiverController studentWaiverController =
          StudentWaiverController(
        previousSemesterResult: 3,
        listOfAvailableWaiver: [100],
        sscResult: 4.78,
        hscResult: 3.75,
        prevTotalRegisteredCredit: 14,
        newIntakeCredit: 14,
        retakeCredit: 0,
        // additionalWaiver: 10,
      );
      expect(studentWaiverController.getTotalWaiver(), 100);
    });
    test("100% waiver but below 3", () {
      final StudentWaiverController studentWaiverController =
          StudentWaiverController(
        previousSemesterResult: 2.99,
        listOfAvailableWaiver: [100],
        sscResult: 4.78,
        hscResult: 3.75,
        prevTotalRegisteredCredit: 14,
        newIntakeCredit: 14,
        retakeCredit: 0,
        // additionalWaiver: 10,
      );
      expect(studentWaiverController.getTotalWaiver(), 0);
    });
    test("100% waiver + 10% waiver", () {
      final StudentWaiverController studentWaiverController =
          StudentWaiverController(
        previousSemesterResult: 3,
        listOfAvailableWaiver: [100],
        sscResult: 4.78,
        hscResult: 3.75,
        prevTotalRegisteredCredit: 14,
        newIntakeCredit: 14,
        retakeCredit: 0,
        additionalWaiver: 10,
      );
      expect(studentWaiverController.getTotalWaiver(), 100);
    });
    test("0% waiver newintake less then 9", () {
      final StudentWaiverController studentWaiverController =
          StudentWaiverController(
        previousSemesterResult: 3.01,
        listOfAvailableWaiver: [0],
        sscResult: 5,
        hscResult: 5,
        prevTotalRegisteredCredit: 12,
        newIntakeCredit: 8,
        retakeCredit: 4,
      );
      expect(studentWaiverController.getTotalWaiver(), 0);
    });
    test("0% waiver 30% sschsc", () {
      final StudentWaiverController studentWaiverController =
          StudentWaiverController(
        previousSemesterResult: 3.93,
        listOfAvailableWaiver: [0],
        sscResult: 4.68,
        hscResult: 4.33,
        prevTotalRegisteredCredit: 13,
        newIntakeCredit: 11,
        retakeCredit: 2,
      );
      expect(studentWaiverController.getTotalWaiver(), 30);
    });
  });
  // start intregation test.
}
