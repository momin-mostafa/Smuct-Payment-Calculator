// import 'package:flutter/material.dart';
// import 'colorCode.dart';

// class CustomTeacherCard extends StatelessWidget {
//   const CustomTeacherCard({Key? key, @required this.nodeList})
//       : super(key: key);
//   final nodeList;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return GridView.builder(
//       gridDelegate:
//           SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300),
//       // padding: EdgeInsets.all(10),
//       // itemCount: widget.nodeList.length,
//       // shrinkWrap: true,
//       itemCount: 1,
//       itemBuilder: (context, index) {
//         return Card(
//           // child: Column(
//           //   children: [
//           //     // Image.asset(
//           //     //   widget.nodeList[index].imgaddress,
//           //     //   width: MediaQuery.of(context).size.width,
//           //     //   height: MediaQuery.of(context).size.height / 4,
//           //     //   fit: BoxFit.fill,
//           //     // ),
//           //     SizedBox(
//           //       height: 8.7,
//           //     ),
//           //     Text(
//           //       // '${widget.nodeList[index].position}',
//           //       '.',
//           //       textAlign: TextAlign.center,
//           //       style: TextStyle(
//           //         fontSize: MediaQuery.textScaleFactorOf(context) * 20,
//           //       ),
//           //     ),
//           //     SizedBox(
//           //       height: 8.7,
//           //     ),
//           child: Text(
//             'Deptartment of CSE and CSIT',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: MediaQuery.textScaleFactorOf(context) * 18,
//             ),
//           ),
//           // SizedBox(
//           //   height: 8.7,
//           // ),
//           // Text(
//           //   // '${widget.nodeList[index].mailAddress}'
//           //   ' / ',
//           //   // '${widget.nodeList[index].phone}',
//           //   textAlign: TextAlign.center,
//           //   style: TextStyle(
//           //     fontSize: MediaQuery.textScaleFactorOf(context) * 16,
//           //   ),
//           // ),
//           // Padding(padding: EdgeInsets.all(15)),
//           // GestureDetector(
//           //   onTap: () {
//           //     // Navigator.push(context,
//           //     //     MaterialPageRoute(builder: (context) => InfoPage()));
//           //   },
//           //   child: Container(
//           //     height: size.height / 24,
//           //     width: size.width / 10,
//           //     decoration: BoxDecoration(
//           //       color: UIColor.teacherCardButtonBackground,
//           //       borderRadius: BorderRadius.circular(8.7),
//           //     ),
//           //     child: Center(child: Text('About')),
//           //   ),
//           // ),
//           // ],
//         );
//       },
//     );
//   }
// }

// class Teachers {
//   final imgName;
//   var imgaddress = 'images/jamaluddinAhmed.jpg';
//   final position;
//   final mailAddress;
//   final phone;
//   // final widgetName;
//   Teachers({
//     @required this.imgName,
//     @required this.position,
//     @required this.mailAddress,
//     @required this.phone,
//     // @required this.widgetName,
//   }) {
//     // this.imgaddress += imgName;
//   }
// }

// final teachersList = [
//   Teachers(
//       imgName: 'jamaluddinAhmde.jpg',
//       position: 'HOD',
//       mailAddress: "jamal35@gmail.com",
//       phone: "01708090739"),
// ];
 
// // Column(
// //             children: [
// //               Image.asset(
// //                 '${widget.nodeList[index].imgaddress}',
// //                 width: MediaQuery.of(context).size.width,
// //                 height: MediaQuery.of(context).size.height / 4,
// //                 fit: BoxFit.fill,
// //               ),
// //               SizedBox(
// //                 height: 8.7,
// //               ),
// //               Text(
// //                 '${widget.nodeList[index].position}',
// //                 textAlign: TextAlign.center,
// //                 style: TextStyle(
// //                   fontSize: MediaQuery.textScaleFactorOf(context) * 20,
// //                 ),
// //               ),
// //               SizedBox(
// //                 height: 8.7,
// //               ),
// //               Text(
// //                 'Deptartment of CSE and CSIT',
// //                 textAlign: TextAlign.center,
// //                 style: TextStyle(
// //                   fontSize: MediaQuery.textScaleFactorOf(context) * 18,
// //                 ),
// //               ),
// //               SizedBox(
// //                 height: 8.7,
// //               ),
// //               Text(
// //                 '${widget.nodeList[index].mailAddress}'
// //                 ' / '
// //                 '${widget.nodeList[index].phone}',
// //                 textAlign: TextAlign.center,
// //                 style: TextStyle(
// //                   fontSize: MediaQuery.textScaleFactorOf(context) * 16,
// //                 ),
// //               ),
// //               Padding(padding: EdgeInsets.all(15)),
// //               GestureDetector(
// //                 onTap: () {
// //                   // Navigator.push(context,
// //                   //     MaterialPageRoute(builder: (context) => InfoPage()));
// //                 },
// //                 child: Container(
// //                   height: size.height / 24,
// //                   width: size.width / 10,
// //                   decoration: BoxDecoration(
// //                     color: UIColor.teacherCardButtonBackground,
// //                     borderRadius: BorderRadius.circular(8.7),
// //                   ),
// //                   child: Center(child: Text('About')),
// //                 ),
// //               ),
// //             ],
// //           );