import 'package:flutter/material.dart';
import 'package:ieltspt/constants/app_color.dart';
import 'package:ieltspt/constants/app_img.dart';

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
              AppImg.imagelogo,
              height: 40,
              width: 39.26,
              fit: BoxFit.cover,
            ),
            Image.asset(
              AppImg.bell,
              height: 21.22,
              width: 19.33,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 211, 252, 232),
                      Color.fromARGB(0, 255, 255, 255),
                    ],
                  ),
                ),
                child:Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: 
                Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
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
                          right: -0.5,
                          top: 8,
                          bottom: -0.5,
                          child: Image.asset(AppImg.girlpic,height: 144,width: 170,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
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
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 173, 152, 152),
                        ),
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
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: GridView.custom(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 2,
                    childAspectRatio: 1.2,
                  ),
                  childrenDelegate: SliverChildListDelegate([
                    // speaking
                    _buildCard(
                      txtLeft: false,
                      bgColor: Color(0xFFC5FBFF),
                      padding: EdgeInsets.only(left: 0),
                      title: "Speaking",
                      color: Color(0xFF02949D),
                      subTitle: "AI Score\nPronunciation",
                      top: 30,
                      right: 0.17,
                      bottom: 0,
                      left: 74,
                      imagePath: AppImg.doctor,
                      imageHeight: 50,
                      imageWidth: 105,
                      imageLeft: false,
                    ),
                    // Writing
                    _buildCard(
                      txtLeft: true,
                      bgColor: Color(0xFFFFEAEA),
                      padding: EdgeInsets.only(right: 5),
                      title: "Writing",
                      color: Color(0xffBD5656),
                      subTitle: "AI Score\nCorrection",
                      top: 29,
                      right: 100,
                      bottom: -10,
                      left: 1,
                      imagePath: AppImg.girlwond,
                      imageHeight: 50,
                      imageWidth: 41.58,
                      imageLeft: true,
                    ),
                    // Reading
                    _buildCard(
                      txtLeft: false,
                      bgColor: Color(0xFFE7FFD4),
                      padding: EdgeInsets.only(left: 0),
                      title: "Reading",
                      color: Color(0xff4F9A14),
                      subTitle: "Immediate\nFeedback",
                      top: 43,
                      right: 0.13,
                      bottom: 0,
                      left: 65,
                      imagePath: AppImg.girlbook,
                      imageHeight: 85,
                      imageWidth: 115.13,
                      imageLeft: false,
                    ),
                    // listening
                    _buildCard(
                      txtLeft: false,
                      bgColor: Color(0xFFCFD1FF),
                      padding: EdgeInsets.only(right: 0),
                      title: "Listening  ",
                      color: Color(0xff3C448C),
                      subTitle: "Daily Updated",
                      top: 45,
                      right: 52.5,
                      bottom: 0,
                      left: 0,
                      imagePath: AppImg.girlhp,
                      imageLeft: true,
                      imageHeight: 83,
                      imageWidth: 120.3,
                    ),
                  ]),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Align(
                  alignment: AlignmentGeometry.centerLeft,
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
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildTools("Vocab Books", AppImg.text),
                    _buildTools("Shadow Readina", AppImg.voice),
                    _buildTools("Listening MP3", AppImg.handp),
                    _buildTools("Group study", AppImg.group),
                  ],
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    "Events",
                
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 390,
                
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 10,
                    right: 14,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.primaryClr,
                    borderRadius: BorderRadius.circular(10),
                  ),
                
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                    children: [
                      SizedBox(
                        width: 219,
                        child: Text(
                          "Lorem ipsum dolor sit amet consectetur.Lectus sed auctor amet tellus sem odio.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      _buildStarts("Join Now", Color(0xffFF9C00)),
                    ],
                  ),
                ),
              ),
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

          child: Image.asset(imagePath, fit: BoxFit.contain),
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




  Widget _buildCard({
    required double top,
    required double left,
    required String title,
    required dynamic color,
    required double bottom,
    required double right,
    required Color bgColor,
    required bool imageLeft,
    required bool txtLeft,
    required dynamic padding,
    required String subTitle,
    required String imagePath,
    required double imageWidth,
    required double imageHeight,
  }) {
    return Stack(
      children: [

        Container(
          width: 170,
          height: 130,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),


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

        Align(
          alignment: imageLeft ? Alignment.centerRight : Alignment.centerLeft,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: imageLeft
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: txtLeft
                      ? const EdgeInsets.symmetric(horizontal: 15)
                      : EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: color,
                        ),
                      ),
                      Text(
                        subTitle,
                        textAlign: TextAlign.start,

                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF5C5C5C),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15),
                _buildStarts("Start", Color(0xFFFF9C00)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container _buildStarts(String text, dynamic color) {
    return Container(
      margin: EdgeInsets.only(bottom: 22),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
