import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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

        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(top: 30, left: 50)),

              SizedBox(
                height: 80,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
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
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(width: 176, height: 20),
              SizedBox(height: 15),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Full Name",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 7),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "John Doe",

                            hintStyle: TextStyle(color: Colors.blueGrey),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),

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
                          ),
                        ),
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
                          "Email Address",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 7),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "email@example.com",

                            hintStyle: TextStyle(color: Colors.blueGrey),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),

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
                          ),
                        ),
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
                          "password",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 7),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "**********",
                            suffixIcon: Icon(Icons.visibility_off),

                            hintStyle: TextStyle(color: Colors.blueGrey),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),

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
                          ),
                        ),
                      ],
                    ),
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
                      Text(
                        "terms & ",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 76, 74, 177),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100),
                    height: 1.8,
                    width: 58,
                    color: Color.fromARGB(255, 76, 74, 177),
                  ),

                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 115)),
                      Text(
                        "conditions",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 76, 74, 177),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 90),
                    height: 1.8,
                    width: 75,
                    color: Color.fromARGB(255, 76, 74, 177),
                  ),

                  SizedBox(width: 176, height: 40),
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
                            Container(
                              height: 58,
                              width: 58,

                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.black12,
                                    offset: Offset(2, 2),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.all(5),

                              child: Image.asset(
                                "assets/icons/callpic.png",
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),

                            SizedBox(width: 17),
                            Container(
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
                              padding: EdgeInsets.symmetric(
                                vertical: 17,
                                horizontal: 17,
                              ),

                              child: Image.asset(
                                "assets/icons/google.png",
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 50),

                          height: 50,
                          width: 353,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFFFF9C00),

                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 8),
                                Text(
                                  'create Account',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
                  Text(
                    "Login Now ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 76, 74, 177),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
