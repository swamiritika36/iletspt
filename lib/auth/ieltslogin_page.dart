import 'package:flutter/material.dart';
import 'package:ieltspt/components/primary_btn.dart';
import 'package:ieltspt/components/primary_textfield.dart';

class IeltsloginPage extends StatelessWidget {
  const IeltsloginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Register.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            ),
            Image.asset(
              "assets/images/imagelogo.png",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 150),

              width: double.infinity,

              child: Row(
                children: [
                  Text(
                    "App ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFFFF807F),
                    ),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFFDC18A4),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            SizedBox(width: double.infinity, height: 20),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 7),

                  PrimaryTextfield(hinttext: "Please enter your email"),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 7),
                  PrimaryTextfield(
                    hinttext: "Please enter the password",
                    suffixicon: Icons.visibility_off,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              child: Align(
                alignment: AlignmentGeometry.centerRight,

                child: Text(
                  " Forgot Password?",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(height: 15),
            PrimaryBtn(text: "Login user", bgclr: Colors.black),

            SizedBox(height: 15),
            SizedBox(width: 176, height: 40),
            SizedBox(height: 15),

            Text(
              'Or login with',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 76, 74, 177),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(50),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.call, color: Colors.white, size: 25),
                    SizedBox(width: 8),
                    Text('Login with phone', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                ),
                Text(
                  "Register Now ",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 76, 74, 177),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
