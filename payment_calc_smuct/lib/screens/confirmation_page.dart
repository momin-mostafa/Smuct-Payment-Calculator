import 'dart:ffi';

import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const double elevation = 5;
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: height / 5,
            width: width / 1.1,
            child: Card(
              elevation: elevation,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Are You A Fresher ?",
                      style: TextStyle(
                        fontSize: width * 0.06,
                      ),
                    ),
                    SizedBox(
                      height: height / 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Yes"),
                          //TODO implementation starts here,
                        ),
                        SizedBox(
                          width: width / 6,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("No"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
