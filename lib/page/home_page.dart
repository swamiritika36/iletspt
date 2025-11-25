import 'package:flutter/material.dart';
import 'package:ieltspt/constants/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 211, 252, 232),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/imagelogo.png",
              height: 40,
              width: 39.26,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/vector.png",
              height: 21.22,
              width: 19.33,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              color: const Color.fromARGB(255, 211, 252, 232),
            ),

            SizedBox(
              width: double.infinity,

              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 390,
                        height: 120,
                        padding: EdgeInsets.all(10),

                        decoration: BoxDecoration(
                          color: AppColor.primaryClr,

                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Column(
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

                            SizedBox(
                              height: 50,
                              width: 202,
                              child: Text(
                                "Lorem ipsum dolor sit amet consectetur.Not purus sit mattis cras consectetur arcu. ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 2,
                        top: -20,
                        bottom: 0.5,
                        child: Image.asset("assets/icons/girlpic.png"),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(right: 4, left: 4),
                    child: Container(
                      width: 373,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search Content here.",

                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 161, 162, 163),
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            size: 35,
                            color: const Color.fromARGB(255, 59, 152, 199),
                          ),
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

                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GridView.custom(
                    padding: EdgeInsets.all(10),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.25,
                    ),
                    childrenDelegate: SliverChildListDelegate([
                      // speaking
                      _buildCard(
                        bgColor: Color(0xFFC5FBFF),
                        title: "Speaking",
                        color: Color(0xFF02949D),
                        subTitle: "AI Score Pronunciation",
                        textAlign: "left",
                       top: 30,right: -5,bottom: 4,left: 55,
                        imagePath: "assets/images/doctor.png",
                        imageHeight: 50,
                        imageWidth: 105,
                        imageLeft: false,
                    
                      ),

                      // Writing
                      _buildCard(
                        bgColor: Color(0xFFFFEAEA),
                        title: "Writing",
                        color: Color(0xffBD5656),
                        subTitle: "AI Score Correction",
                        textAlign: "right",
                         top: 20,right:70,bottom: 5,left: 1,
                        imagePath: "assets/images/girlwond.png",
                        imageHeight: 50,
                        imageWidth: 41.58,
                        imageLeft: true,
                      
                      ),

                      // Reading
                      _buildCard(
                        bgColor: Color(0xFFE7FFD4),
                        title: "Reading",
                        color: Color(0xff4F9A14),
                        subTitle: "Immediate Feedback",
                        textAlign: "left",
                         top: 40,right: -40,bottom: 4,left: 20,
                        imagePath: "assets/images/girlbook.png",
                        imageHeight: 85,
                        imageWidth: 115.13,
                        imageLeft: false,
                    
                      ),
                      // listening
                      _buildCard(

                        bgColor: Color(0xFFCFD1FF),
                        title: "Listening",
                        color: Color(0xff3C448C),
                        subTitle: "Daily Updated",
                        textAlign: "right",
                       top: -10,right: 45,bottom: -55,left: 0,
                        imagePath: "assets/images/girlhp.png",
                        imageLeft: true,
                        imageHeight: 83,
                        imageWidth: 127.3,
                    
                      ),
                    ]),
                  ),
                ],
              ),
            ),

            Align(alignment: AlignmentGeometry.centerLeft,
              child: Text(
                "Our Study Tools",
              
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: _buildTools("Vocab Books", "assets/images/text.png"),
                ),
                Flexible(
                  child: _buildTools(
                    "Shadow Readina",
                    "assets/images/voice.png",
                  ),
                ),
                Flexible(
                  child: _buildTools(
                    "Listening MP3",
                    "assets/images/handp.png",
                  ),
                ),

                Flexible(
                  child: _buildTools("Group study", "assets/images/group.png"),
                ),
              ],
            ),

            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Column _buildTools(String text, String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 100,
          width: 66,

          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
            height: 66,
            width: 66,
          ),
        ),

        SizedBox(
          height: 35,
          width: 66,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF878787),
            ),
          ),
        ),
      ],
    );
  }

  TextAlign _buildTextAlign(String value) {
    switch (value.toLowerCase()) {
      case "center":
        return TextAlign.center;
      case "right":
        return TextAlign.right;
      case "left":
      default:
        return TextAlign.left;
    }
  }


  Widget _buildCard({
  required Color bgColor,
  required String title,
  required dynamic color,
  required String subTitle,
  required String textAlign,
  required String imagePath,
  required bool imageLeft,
  required double imageHeight,
  required double imageWidth,
  required double top,
  required double bottom,
  required double left,
  required double right,
}) {
  return Container(
    width: 170,
    height: 130,
    child: Stack(
      children: [
        // Background color container
        Container(
          width: 170,
          height: 130,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),

        // Positioned Image
        Positioned(
          top: top,
          bottom: bottom,
          left: left,
          right: right,
          child: Image.asset(
            imagePath,
            height: imageHeight,
            width: imageWidth,
            fit: BoxFit.contain,
          ),
        ),

        // Texts and other widgets
        Positioned(
          top: 10,
          left: imageLeft ? null : 10,
          right: imageLeft ? 10 : null,
          child: Column(
            crossAxisAlignment:
                imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: color,
                ),
              ),
              SizedBox(height: 2),
              SizedBox(
                height: 42,
                width: 100,
                child: Text(
                  subTitle,
                  textAlign: _buildTextAlign(textAlign),
                  style: TextStyle(fontSize: 12, color: Color(0xFF5C5C5C)),
                ),
              ),
              SizedBox(height: 5),
              _buildStarts("Start"),
            ],
          ),
        ),
      ],
    ),
  );
}


  Container _buildStarts(String text) {
    return Container(
      height: 25,

      width: 48,

      decoration: BoxDecoration(
        color: Color(0xFFFF9C00),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.symmetric(horizontal: 1, vertical: 2),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
