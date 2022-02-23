import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Color backgroundColor;
  final double hight;
  final double width;
  final Function ontapFun;
  final String name;
  const CustomButton({
    Key? key,
    this.backgroundColor = Colors.white,
    required this.hight,
    required this.width,
    required this.ontapFun,
    required this.name,
  }) : super(key: key);

  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  bool isElevated = true;
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
          borderRadius: BorderRadius.circular(3),
          boxShadow: isElevated
              ? [
                  const BoxShadow(
                    color: Colors.black54,
                    offset: Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Colors.blue[300]!,
                    offset: const Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ]
              : null,
        ),
        child: Center(child: Text(widget.name)),
      ),
    );
  }
}
