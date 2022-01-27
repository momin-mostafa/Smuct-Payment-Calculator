import 'package:flutter/material.dart';
import 'color_code.dart';

class PelobSirCard extends StatelessWidget {
  const PelobSirCard({Key? key}) : super(key: key);

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
            'Images/pelob.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 8.7,
          ),
          Text(
            'COD (Day)',
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
            'pelobcse39@gmail.com ' '/' '01755806143',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.textScaleFactorOf(context) * 16,
            ),
          ),
          const Padding(padding: EdgeInsets.all(15)),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InfoPage()));
            },
            child: Container(
              height: size.height / 24,
              width: size.width / 10,
              decoration: BoxDecoration(
                color: UIColor.teacherCardButtonBackground,
                borderRadius: BorderRadius.circular(8.7),
              ),
              child: const Center(child: Text('About')),
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
                  'Lecturer and Coordinator, Dept. of CSE & CSIT at Shanto-Mariam University of Creative Technology'),
            ),
            Divider(),
            ListTile(
              title: Text(
                  'Studied Computer Science and Engineering at Jahangirnagar University'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
