import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String text;
  final Color? bgclr;
  const PrimaryBtn({super.key, required this.text, this.bgclr});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: bgclr == null ? Color(0xFFFF9C00) : bgclr,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(50),
          ),
        ),
        child: Text(text, style: TextStyle(fontSize: 14)),
        onPressed: () {},
      ),
    );
  }
}
