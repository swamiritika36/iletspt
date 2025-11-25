import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String text;
  final Color? bgclr;
  final Icon? icons;

  final VoidCallback? onPressed;
  final bool isLoading;
  const PrimaryBtn({
    super.key,
    required this.text,
    this.bgclr,
    this.icons,
    this.onPressed,
    this.isLoading = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: bgclr ?? const Color(0xFFFF9C00),
        borderRadius: BorderRadiusGeometry.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icons ?? SizedBox.shrink(),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: isLoading ? null : onPressed,
            child: isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : Text(
                    text,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
          ),
        ],
      ),
    );
  }
}
