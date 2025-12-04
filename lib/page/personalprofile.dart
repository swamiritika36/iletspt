import 'package:flutter/material.dart';
import 'package:ieltspt/constants/app_img.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Personal Info",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Image.asset(AppImg.edit),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 93, 44, 254),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImg.profile, height: 100, width: 100),

              SizedBox(height: 30),

              _buildTextRow("Name", "Username"),
              SizedBox(height: 20),

              _buildTextRow("Email", "user@example.com"),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("UUID"), Text("f64s1xb684d13")],
              ),

              SizedBox(height: 20),

              _buildTextRow("Date of Birth", "01-01-2000"),

              SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Delete Account",
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildTextRow(String label, String hint) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(
            hint,
         ),
                    
      ],
    );
  }
}
