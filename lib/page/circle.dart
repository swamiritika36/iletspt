import 'package:flutter/material.dart';
import 'package:ieltspt/constants/app_color.dart';

class Circle extends StatelessWidget {
  const Circle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:AppColor.primaryClr,
        centerTitle: true,
        title: Text(
          "Circle",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildUsername(
                icon1: Image.asset("assets/images/sms.png"),
                icon2:Image.asset("assets/images/goodluck.png"),
              ),
              SizedBox(height: 10),
          
              Padding(
                padding:EdgeInsets.only(left: 50),
                child: Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 181, 194, 247),
                  ),
                  child: Column(
                    children: [
                      _buildUsername(icon2:Image.asset("assets/images/goodluck.png"),),
                      SizedBox(height: 10),
                      _buildUsername(icon2:Image.asset("assets/images/goodluck.png"),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
          
              _buildUsername(
                icon1: Image.asset("assets/images/sms.png",height: 18,width: 18,),
              
                icon2: Image.asset("assets/images/goodluck.png"),
              ),
          
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 181, 194, 247),
                  ),
                  child: Column(
                    children: [
                      _buildUsername(icon2:Image.asset("assets/images/goodluck.png"),),
                      SizedBox(height: 10),
                      _buildUsername(icon2:Image.asset("assets/images/goodluck.png"),),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildUsername({Widget? icon1, Widget? icon2}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, bottom: 60,top: 8,right: 8),
              child: Image.asset(
                "assets/images/contact.png",
                fit: BoxFit.contain,
                height: 40,
                width: 40,
              ),
            ),
    
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("\$"),
                      Text(
                        "username",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur.Ornare dis praesent orci eu sem fermentum malesuada.Enim elementum nisl molestie.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "01-09-2023",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            if (icon1 != null) icon1,
                            SizedBox(width: 8,),
                            if (icon2 != null) icon2,
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
