import 'package:faculty_demo_app/aboutus/about_us_strings.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("За факултета"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset(
            "assets/images/aboutus.jpg",
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  AboutUsStrings.educationTitle,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 10),
                Text(
                  AboutUsStrings.educationDescription,
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height: 20),
                Text(AboutUsStrings.teacherTitle,
                    style: TextStyle(fontSize: 24)),
                SizedBox(height: 10),
                Text(
                  AboutUsStrings.teacherDescription,
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
