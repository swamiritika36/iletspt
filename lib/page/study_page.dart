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
              _buildHeadline("Our Study Tools"),
              SizedBox(height: 10),

              SizedBox(
                width: 373,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildTools("Vocab\n Books",AppImg.text),
                        _buildTools(
                          "Shadow Readina",
                          AppImg.voice,
                        ),
                        _buildTools(
                          "Listening\n MP3",
                         AppImg.handp,
                        ),
                        _buildTools("Group\n study",AppImg.group ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 15)),
                        Flexible(
                          child: _buildTools(
                            "Download\n Materials",
                            AppImg.download,
                          ),
                        ),
                        SizedBox(width: 25),
                        Flexible(
                          child: _buildTools("Mock\n Tests", AppImg.mock),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey, thickness: 0.5),
              SizedBox(height: 10),
              _buildHeadline("Vocab Books"),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,

                ),

                itemCount: vocabBooks.length,
                itemBuilder: (context, index) {
                  return _buildVocabooks(vocabBooks[index]);
                },
              ),

              SizedBox(height: 10),
              Divider(color: Colors.grey, thickness: 0.5),
              SizedBox(height: 10),
              _buildHeadline("Listening MP3"),

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

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeadline(String text) {
    return Align(
      alignment: AlignmentGeometry.centerLeft,
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontSize: 16,
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
          Image.asset(AppImg.play, fit: BoxFit.contain),
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
          Image.asset(AppImg.emobook),
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
