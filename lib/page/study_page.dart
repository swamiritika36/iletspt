import 'package:flutter/material.dart';
import 'package:ieltspt/constants/app_img.dart';

class StudyPage extends StatefulWidget {
  const StudyPage({super.key});

  @override
  State<StudyPage> createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  final List<String> vocabBooks = [
    "My Vocab List",
    "WFD Exam Vocab",
    "Listening FIB Exam Vocab",
    "PTE Basic Vocab",
    "My Vocab List",
    "WFD Exam Vocab",
    "Listening FIB Exam Vocab",
    "PTE Basic Vocab",
  ];
  final List<String> mp = [
    "Fill in the Blanks",
    "Write From Dictation",
    "Read Aloud",
    "Retail Lecture",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 10, right: 10),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Our Study Tools",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(height: 10),

              SizedBox(
                width: 373,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: _buildTools(
                            "Vocab\n Books",
                            "assets/images/text.png",
                          ),
                        ),
                        Flexible(
                          child: _buildTools(
                            "Shadow Readina",
                            "assets/images/voice.png",
                          ),
                        ),
                        Flexible(
                          child: _buildTools(
                            "Listening\n MP3",
                            "assets/images/handp.png",
                          ),
                        ),
                        Flexible(
                          child: _buildTools(
                            "Group\n study",
                            "assets/images/group.png",
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 15)),
                        Flexible(
                          child: _buildTools(
                            "Download\n Materials",
                            "assets/images/download.png",
                          ),
                        ),
                        SizedBox(width: 25),
                        Flexible(
                          child: _buildTools(
                            "Mock\n Tests",
                            AppImg.mock,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey, thickness: 0.5),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: 373,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Vocab Books",
                  style: TextStyle( 
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              // SizedBox(height: 10),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  // childAspectRatio: 1,
                ),
                itemCount: vocabBooks.length,
                itemBuilder: (context, index) {
                  return _buildVocabooks(vocabBooks[index]);
                },
              ),

              SizedBox(height: 10),
              Divider(color: Colors.grey, thickness: 0.5),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: 373,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Listening MP3",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(4, (index) {
                  return _buildMp3(mp[index]);
                }),
              ),

              Divider(color: Colors.grey, thickness: 0.5),
              SizedBox(height: 10),
              // SizedBox(height: 20),
              // Container(
              //   width: double.infinity,
              //   height: 64,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey,
              //         offset: Offset(0, -3),
              //         blurRadius: 6,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildMp3(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset("assets/images/play.png", fit: BoxFit.contain),
          Text(
            text,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Container _buildVocabooks(String text) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(top: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/images/emobook.png"),
          SizedBox(height: 3),
          Text(
            text,
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Column _buildTools(String text, String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(imagePath, fit: BoxFit.contain, height: 66, width: 66),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF878787),
          ),
        ),
      ],
    );
  }
}
