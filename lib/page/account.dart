import 'package:flutter/material.dart';
import 'package:ieltspt/constants/app_color.dart';
import 'package:ieltspt/page/personalprofile.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  BuildContext? get context => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,

              decoration: BoxDecoration(
                color:AppColor.primaryClr,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 111, top: 32.79, right: 69),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/profile.png",
                      fit: BoxFit.contain,
                      height: 124,
                      width: 124,
                    ),
                    SizedBox(height: 7),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "User name",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 7),
                        Text(
                          "user@example.com",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  _buildTextRow(
                    context,
                    "Personal Profile",
                    "assets/images/parpro.png",
                  ),
                  _buildTextRow(
                    context,
                    "My Courses",
                    "assets/images/bookset.png",
                  ),
                  SizedBox(height: 20),
                  _buildTextRow(
                    context,
                    "Contact Us",
                    "assets/images/grhp.png",
                  ),

                  _buildTextRow(
                    context,
                    "Help (Q & A)",
                    "assets/images/quetion.png",
                  ),

                  _buildTextRow(context, "About us", "assets/images/rate.png"),

                  _buildTextRow(
                    context,
                    "Rate or App",
                    "assets/images/good.png",
                  ),

                  _buildTextRow(
                    context,
                    "Privacy Policy",
                    "assets/images/policy.png",
                  ),

                  _buildTextRow(
                    context,
                    "Terms & Conditions",
                    "assets/images/terms.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildTextRow(BuildContext context, String text, String assetPath) {
    double screenWidth = MediaQuery.of(context).size.width;
    double arrowSize = screenWidth * 0.07;

    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 54,
      width: 350,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 246, 245, 245),

        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                assetPath,
                fit: BoxFit.contain,
                height: 20,
                width: 20,
              ),
              SizedBox(width: 10),
              Text(text, style: TextStyle(fontSize: 16)),
            ],
          ),
          InkWell(
            onTap: () {
              if (text == "Personal Profile") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Personalprofile(),
                  ),
                );
              }
            },
            child: Icon(Icons.keyboard_arrow_right, size: arrowSize),
          ),
        ],
      ),
    );
  }
}
