import 'package:flutter/material.dart';
import 'color_code.dart';

class MasudSirCard extends StatelessWidget {
  const MasudSirCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width / 1.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: UIColor.teacherCardBackground,
      ),
      child: Column(
        children: [
          Image.asset(
            'Images/masudSir.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 8.7,
          ),
          Text(
            'Lecturer',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.textScaleFactorOf(context) * 20,
            ),
          ),
          const SizedBox(
            height: 8.7,
          ),
          Text(
            'Deptartment of CSE and CSIT',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.textScaleFactorOf(context) * 18,
            ),
          ),
          const SizedBox(
            height: 8.7,
          ),
          Text(
            'jewel05math@gmail.com' ' / ' '01723636948',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.textScaleFactorOf(context) * 16,
            ),
          ),
          const Padding(padding: EdgeInsets.all(15)),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InfoPage()));
            },
            child: Container(
              height: size.height / 24,
              width: size.width / 10,
              decoration: BoxDecoration(
                color: UIColor.teacherCardButtonBackground,
                borderRadius: BorderRadius.circular(8.7),
              ),
              child: Center(child: Text('About')),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColor.homeAppBar,
        title: const Text(
          "SMUCTian",
          style: TextStyle(fontFamily: "Italiana-Regular.ttf"),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: size.width,
        child: Column(
          children: const [
            Padding(padding: EdgeInsets.all(5)),
            ListTile(
              title: Text(
                  'Lecturer, Depts. of CSE & CSIT at Shanto Mariam University of Creative Technology'),
            ),
            Divider(),
            ListTile(
              title: Text('Financial Associate at MetLife Bangladesh'),
            ),
            Divider(),
            ListTile(
              title: Text('Advisor at Prothom Alo Bondhushava'),
            ),
            Divider(),
            ListTile(
              title: Text("Studied at University of Rajshahi"),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
