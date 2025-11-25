// ignore: file_names
import 'package:flutter/material.dart';
import 'package:ieltspt/components/bottomnevbar.dart';

import 'package:ieltspt/components/primary_btn.dart';

class IeltsmainPage extends StatefulWidget {
  const IeltsmainPage({super.key});

  @override
  State<IeltsmainPage> createState() => _IeltsmainPageState();
}

class _IeltsmainPageState extends State<IeltsmainPage> {
  bool obscure = true;
  bool showLogin = true;
  VoidCallback? get onSwitch => null;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBF2F8),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentGeometry.bottomRight,
              child: Image.asset("assets/images/half_circle.png"),
            ),
            Align(
              alignment: AlignmentGeometry.centerLeft,

              child: Image.asset("assets/images/triangle.png"),
            ),

            Positioned(
              left: 260,
              right: 0,
              bottom: 220,
              child: Image.asset(
                "assets/images/fithangle.png",
                fit: BoxFit.contain,
                height: 161,
                width: 161,
              ),
            ),
            Positioned(
              left: 70,
              top: 30,
              child: Image.asset(
                "assets/images/Ellipse.png",
                fit: BoxFit.contain,
                height: 35,
                width: 35,
              ),
            ),
            Align(
              alignment: AlignmentGeometry.topRight,

              child: Image.asset("assets/images/polygon.png"),
            ),
            Positioned(
              left: 80,
              bottom: 185,
              child: Image.asset(
                "assets/images/greendot.png",
                fit: BoxFit.contain,
                height: 15,
                width: 15,
              ),
            ),
            Positioned(
              right: 80,
              top: 180,
              child: Image.asset(
                "assets/images/ellipsebig.png",
                fit: BoxFit.contain,
                height: 82,
                width: 82,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(30),
              child: showLogin
                  ? _buildloginpage(() => setState(() => showLogin = false))
                  : _buildReg(() => setState(() => showLogin = true), context),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  Column _buildloginpage(VoidCallback onSwitch) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/images/imagelogo.png",
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Email Address",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 8),
            _buildtextfield(
              "email@example.com",
              showIcon: false,
              obscure: false,
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                "Password",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 8),
            _buildtextfield(
              "*************",
              obscure: obscure,
              showIcon: true,

              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              },
            ),
          ],
        ),
        Align(
          alignment: AlignmentGeometry.bottomRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              " Forgot Password?",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ),

        PrimaryBtn(
          text: "Login",
          isLoading: isLoading,
          onPressed: () {
            setState(() {
              isLoading = true;
            });

            Future.delayed(const Duration(seconds: 5), () {
              setState(() {
                isLoading = false;
              });
            });
          },
        ),

        Text(
          'Or login with',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        ),
        PrimaryBtn(
          text: "Login with phone",

          icons: Icon(Icons.call, color: Colors.white),
          bgclr: Color.fromARGB(255, 52, 25, 203),
        ),

        SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(color: Colors.blueGrey, fontSize: 14),
            ),
            TextButton(
              onPressed: onSwitch,
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                "Register Now ",
                style: TextStyle(
                  color: const Color.fromARGB(255, 76, 74, 177),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column _buildReg(VoidCallback onSwitch, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Give us some of your information",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 7),
        Text(
          "Registration",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24,
            color: Color.fromARGB(255, 8, 8, 8),
          ),
        ),
        SizedBox(height: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                "Full Name",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 8),
            _buildtextfield("John Doe", showIcon: false, obscure: false),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Email Address",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 8),
            _buildtextfield("Please enter your email"),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                "Password",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 8),
            _buildtextfield(
              "**************",
              obscure: obscure,
              showIcon: true,
              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I agree with the  ",
              style: TextStyle(
                color: const Color.fromARGB(255, 37, 44, 48),
                fontSize: 14,
              ),
            ),
            _buildUnderScore("terms & "),
            _buildUnderScore("conditions"),
          ],
        ),
      
        SizedBox(height: 15),
        Text(
          "Or Register with",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 15),
        SizedBox(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildImageIcon(1.3, "assets/icons/callpic.png"),
                  SizedBox(width: 17),
                  _buildImageIcon(5.3, "assets/icons/google.png"),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 0),
          height: 50,
          width: 340,
          child: PrimaryBtn(
            text: 'Create Account',
            isLoading: isLoading,
            onPressed: () {
              setState(() {
                isLoading = true;
              });

              Future.delayed(const Duration(seconds: 5), () {
                setState(() {
                  isLoading = false;
                });
              });

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bottomnevbar()),
              );
            },
          ),
        ),

        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: TextStyle(color: Colors.blueGrey, fontSize: 15),
            ),
            TextButton(
              onPressed: onSwitch,
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                "Login Now ",
                style: TextStyle(
                  color: const Color.fromARGB(255, 76, 74, 177),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container _buildUnderScore(String name) {
    return Container(
      // margin: EdgeInsets.only(left: 100),
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(
          bottom: BorderSide(width: 2, color: Color.fromARGB(255, 76, 74, 177)),
        ),
      ),

      child: Text(
        name,
        style: TextStyle(
          color: const Color.fromARGB(255, 76, 74, 177),
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Container _buildImageIcon(double scale, String assetPath) {
    return Container(
      height: 58,
      width: 58,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 05,
            color: Colors.black12,
            offset: Offset(2, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.white),
        color: Colors.white,
      ),

      child: Image.asset(assetPath, scale: scale),
    );
  }

  TextField _buildtextfield(
    String text, {
    bool showIcon = false,
    bool obscure = false,
    VoidCallback? onPressed,
  }) {
    return TextField(
      obscureText: obscure,

      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: Colors.blueGrey),

        suffixIcon: showIcon
            ? IconButton(
                onPressed: onPressed,
                icon: Icon(
                  obscure ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
              )
            : null,

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
