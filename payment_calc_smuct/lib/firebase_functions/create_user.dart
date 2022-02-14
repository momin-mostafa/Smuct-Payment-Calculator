import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:payment_calc_smuct/models/model.dart';

Future createUser(FirebaseStudentModel data) async {
  final docUser = FirebaseFirestore.instance.collection("Users").doc(data.id);
  await docUser.set(data.toJason());
}
