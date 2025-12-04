// ignore: file_names
import 'package:flutter/material.dart';
import 'package:ieltspt/components/bottomnevbar.dart';

import 'package:ieltspt/components/primary_btn.dart';
import 'package:ieltspt/constants/app_color.dart';
import 'package:ieltspt/constants/app_img.dart';
import 'package:ieltspt/page/home_page.dart';

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
      backgroundColor: AppColor.bkgdc,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentGeometry.bottomRight,
              child: Image.asset(AppImg.halfcircle),
            ),
            Align(
              alignment: AlignmentGeometry.centerLeft,

              child: Image.asset(AppImg.triangle),
            ),

            Positioned(
              left: 260,
              right: 0,
              bottom: 220,
              child: Image.asset(
                AppImg.fithangle,
                fit: BoxFit.contain,
                height: 161,
                width: 161,
              ),
            ),
            Positioned(
              left: 70,
              top: 30,
              child: Image.asset(
                AppImg.ellipse,
                fit: BoxFit.contain,
                height: 35,
                width: 35,
              ),
            ),
            Align(
              alignment: AlignmentGeometry.topRight,

              child: Image.asset(AppImg.polygon),
            ),
            Positioned(
              left: 80,
              bottom: 185,
              child: Image.asset(
                AppImg.greendot,
                fit: BoxFit.contain,
                height: 15,
                width: 15,
              ),
            ),
            Positioned(
              right: 80,
              top: 180,
              child: Image.asset(
                AppImg.ellipsebig,
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
          AppImg.imagelogo,
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
                color: AppColor.pich,
              ),
            ),
            Text(
              "Name",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: AppColor.pink,
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
                  color: AppColor.textclr,
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
                  color: AppColor.textclr,
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
          bgclr: Color(0xFFFF9C00),
        ),

        Text(
          'Or login with',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        ),
        PrimaryBtn(
          text: "Login with phone",
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

          icons: Icon(Icons.call, color: Colors.white),
          bgclr: AppColor.bluebtn,
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
                  color: AppColor.bluebtn,
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
            color: AppColor.blueGrey,
          ),
        ),
        SizedBox(height: 7),
        Text(
          "Registration",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24,
            color: AppColor.textclr,
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
                  color: AppColor.textclr,
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
                  color: AppColor.textclr,
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
                  color: AppColor.textclr,
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
              style: TextStyle(color: AppColor.textclr, fontSize: 14),
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
                  _buildImageIcon(1.3, AppImg.callpic),
                  SizedBox(width: 17),
                  _buildImageIcon(1, AppImg.google),
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
            bgclr: Color(0xFFFF9C00),
          ),
        ),

        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: TextStyle(color: AppColor.blueGrey, fontSize: 15),
            ),
            TextButton(
              onPressed: onSwitch,
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage()),
                    (route) => false,
                  );
                },

                child: Text(
                  "Login Now ",
                  style: TextStyle(
                    color: AppColor.bluebtn,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
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
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(
          bottom: BorderSide(width: 2, color: AppColor.bluebtn),
        ),
      ),

      child: Text(
        name,
        style: TextStyle(
          color: AppColor.bluebtn,
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
        border: Border.all(color: AppColor.white),
        color: AppColor.white,
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
        hintStyle: TextStyle(color: AppColor.blueGrey),

        suffixIcon: showIcon
            ? IconButton(
                onPressed: onPressed,
                icon: Icon(
                  obscure ? Icons.visibility_off : Icons.visibility,
                  color: AppColor.grey,
                ),
              )
            : null,

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.white),
          borderRadius: BorderRadius.circular(50),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.white),
          borderRadius: BorderRadius.circular(50),
        ),
        filled: true,
        fillColor: AppColor.white,
      ),
    );
  }
}
