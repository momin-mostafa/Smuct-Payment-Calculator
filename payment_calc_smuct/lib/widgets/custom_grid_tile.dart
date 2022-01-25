import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTileHome extends StatelessWidget {
  final String titleStr;
  final Widget onTapPage;
  final Color? color;
  final Function additionalFun;
  const CustomTileHome({
    Key? key,
    this.titleStr = "Custom Tile for Home",
    required this.onTapPage,
    required this.color,
    required this.additionalFun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 20,
        child: Container(
          height: 75,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(8)),
          child: Center(child: Text(titleStr)),
        ),
      ),
      onTap: () {
        additionalFun();
        Get.to(onTapPage);
      },
    );
  }
}
