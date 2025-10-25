import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 393,
        height: 40,
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(15),
          child: Image.asset(
            "assets/images/imagelogo.png",
            height: 40,
            width: 39,
            fit: BoxFit.cover,
          ),
        ),
        
      ),
    );
  }
}
