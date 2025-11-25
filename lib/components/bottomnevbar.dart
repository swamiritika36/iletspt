import 'package:flutter/material.dart';
import 'package:ieltspt/page/account.dart';
import 'package:ieltspt/page/circle.dart';
import 'package:ieltspt/page/home_page.dart';
import 'package:ieltspt/page/study_page.dart';

class Bottomnevbar extends StatefulWidget {
  const Bottomnevbar({super.key});

  @override
  State<Bottomnevbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnevbar> {
  int selectedIndex = 0;

  final List<Widget> _screens = [HomePage(), StudyPage(), Circle(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedIndex],

      bottomNavigationBar:
      Container(
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.4),
        blurRadius: 10,
        offset: Offset(0, -2),
      ),
    ],
  ),
  child:  BottomNavigationBar(
        showUnselectedLabels: true,

        selectedItemColor: Color(0xff6267DE),
        unselectedItemColor: Colors.grey,

        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(
              "assets/images/iconhome.png",
              // height: 24,
              // width: 24,
              fit: BoxFit.contain,
              color: selectedIndex == 0 ? Color(0xff6267DE) : Colors.grey,
            ),

            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/book.png",
              // height: 24,
              // width: 24,
              fit: BoxFit.contain,
              color: selectedIndex == 1 ? Color(0xff6267DE) : Colors.grey,
            ),
            label: "Study",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/hood.png",
              // height: 24,
              // width: 24,
              // fit: BoxFit.contain,
              color: selectedIndex == 2 ? Color(0xff6267DE) : Colors.grey,
            ),
            label: "Circle",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/user.png",
              width: 20.25,
              height: 19.53,
              fit: BoxFit.contain,
              color: selectedIndex == 3 ? Color(0xff6267DE) : Colors.grey,
            ),
            label: "Me",
          ),
        ],
      ),
      ),
    );
  }
}
