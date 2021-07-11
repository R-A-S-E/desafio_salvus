import 'package:flutter/material.dart';

class OutlinedButtonGreen extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onPressed;
  const OutlinedButtonGreen({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2, color: Colors.green),
              primary: Colors.green),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
