import 'package:flutter/material.dart';

class Personalprofile extends StatelessWidget {
  const Personalprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Personal Info",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Image.asset("assets/images/edit.png"),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 93, 44, 254),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Image.asset("assets/images/profile.png", height: 99.2, width: 99.2),

            Text(
              "User name",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              "user@example.com",
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),

            _buildTextField("Name", "Username"),
            SizedBox(height: 30),
            _buildTextField("Email", "user@example.com"),
            SizedBox(height: 30),
            _buildTextField("UUID", "f64s1xb684d13"),
            SizedBox(height: 30),
            _buildTextField("Date of Birth", "01-01-2000"),

            SizedBox(height: 50),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(),
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
    );
  }

  Widget _buildTextField(String label, String text) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(label), Text(text)],
      ),
    );
  }
}
