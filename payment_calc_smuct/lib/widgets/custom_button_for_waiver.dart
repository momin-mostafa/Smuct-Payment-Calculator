import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Color backgroundColor;
  final double hight;
  final double width;
  final Function ontapFun;
  const CustomButton({
    Key? key,
    this.backgroundColor = Colors.white,
    required this.hight,
    required this.width,
    required this.ontapFun,
  }) : super(key: key);

  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  bool isElevated = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isElevated = !isElevated;
        widget.ontapFun();
      }),
      child: AnimatedContainer(
        height: widget.hight,
        width: widget.width,
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: isElevated
              ? [
                  BoxShadow(
                    color: Colors.grey[500]!,
                    offset: const Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ]
              : null,
        ),
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
