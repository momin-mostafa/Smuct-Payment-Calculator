import 'package:flutter/material.dart';
// import 'package:smuctian/Teachers/customCardTeacher.dart';
import 'teachers/color_code.dart';
import 'teachers/jamal_sir.dart';
import 'teachers/jebu_maam.dart';
import 'teachers/masud_sir.dart';
import 'teachers/pelob_sir.dart';
import 'teachers/sharmina_maam.dart';
import 'teachers/tasnim_nigar_maam.dart';
import 'teachers/jahid_sir.dart';

class AboutTeacher extends StatefulWidget {
  const AboutTeacher({Key? key}) : super(key: key);

  @override
  _AboutTeacherState createState() => _AboutTeacherState();
}

class _AboutTeacherState extends State<AboutTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.homeScreenColor,
      appBar: AppBar(
        title: const Text("Teacher List"),
        backgroundColor: UIColor.teacherListAppBar,
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SizedBox(width: 20),
              JamalSirCard(),
              SizedBox(width: 20),
              PelobSirCard(),
              SizedBox(width: 20),
              TasnimNigarMaamCard(),
              SizedBox(width: 20),
              JebuMaamCard(),
              SizedBox(width: 20),
              MasudSirCard(),
              SizedBox(width: 20),
              JahidSirCard(),
              SizedBox(width: 20),
              SharminaMaamCard(),
              SizedBox(width: 20),
              // CustomTeacherCard(
              //   nodeList: teachersList,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
