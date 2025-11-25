import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
  final String hinttext;
  final Color? fillColor;

  final IconData? suffixicon;
  final IconData? prefixIcon;
  const PrimaryTextfield({super.key, required this.hinttext, this.suffixicon,this.prefixIcon, this.fillColor});

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
        prefixIcon: prefixIcon == null ? null : Icon (prefixIcon)
      ),
    );
  }
}
