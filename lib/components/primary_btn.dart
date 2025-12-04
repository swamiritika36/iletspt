import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String text;
  final Color? bgclr;
  final Icon? icons;
  final bool isLoading;

  final VoidCallback? onPressed;

  const PrimaryBtn({
    super.key,
    required this.text,
    this.bgclr,
    this.icons,
    this.onPressed,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgclr,
        fixedSize: Size(double.infinity, 47),
      ),

      onPressed: onPressed,
      child: isLoading
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (icons ?? SizedBox.shrink()),

                Text(text, style: TextStyle(fontSize: 14, color: Colors.white)),
              ],
            ),
    );
  }
}
