import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
  final String hinttext;

  final IconData? suffixicon;
  const PrimaryTextfield({super.key, required this.hinttext, this.suffixicon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hinttext,

        hintStyle: TextStyle(color: Colors.blueGrey),
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
        fillColor: Colors.white,
        filled: true,
        suffixIcon: suffixicon == null ? null : Icon(suffixicon),
      ),
    );
  }
}
