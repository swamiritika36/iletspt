import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 40,
              color: const Color.fromARGB(255, 211, 252, 232),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/imagelogo.png",
                    height: 40,
                    width: 39.26,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/icons/vector.png",
                    height: 21.22,
                    width: 19.33,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),
            SizedBox(
              height: 647,
              width: double.infinity,

              child: Column(
                children: [
                  SizedBox(  height: 181,
                    width: 181,
                    child: Image.asset(
                      "assets/icons/girlpic.png",
                    
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    width: 373,
                    height: 120,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
              
                      borderRadius: BorderRadius.circular(10),
                    ),
              
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
              
                          children: [
                            Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
              
                            Text(
                              "Lorem ipsum dolor sit amet consectetur.Not purus sit mattis cras consectetur arcu. ",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ],
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
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search Content here.",
              
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
              
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 173, 152, 152),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 173, 152, 152),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 173, 152, 152),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: 373,
                    height: 271,
                    child: Row(
                      children: [Container(width: 180, height: 130)],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
