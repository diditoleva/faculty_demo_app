import 'package:faculty_demo_app/aboutus/about_us_screen.dart';
import 'package:faculty_demo_app/history/history_screen.dart';
import 'package:faculty_demo_app/home/home_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Начало"),
        ),
        body: Column(
          children: [_buildHeader(), _buildItems()],
        ));
  }

  Widget _buildHeader() {
    return Container(
      height: 100,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              "assets/images/ggf_logo.png",
              height: 50,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Геолого-географски факултет",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(height: 10),
                Text("СУ “Св. Климент Охридски”",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItems() {
    return Expanded(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: (1.15)),
            itemCount: HomeElement.values.length,
            itemBuilder: (context, index) {
              final item = HomeElement.values[index];

              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    switch (item) {
                      case HomeElement.aboutUs:
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsScreen()));
                        break;
                      case HomeElement.history:
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryScreen()));
                        break;
                      case HomeElement.news:
                        // TODO: Handle this case.
                        break;
                      case HomeElement.candidateStudents:
                        // TODO: Handle this case.
                        break;
                      case HomeElement.education:
                        // TODO: Handle this case.
                        break;
                      case HomeElement.careerCenter:
                        // TODO: Handle this case.
                        break;
                      case HomeElement.library:
                        // TODO: Handle this case.
                        break;
                      case HomeElement.museums:
                        // TODO: Handle this case.
                        break;
                      case HomeElement.bases:
                        // TODO: Handle this case.
                        break;
                      case HomeElement.fss:
                        // TODO: Handle this case.
                        break;
                      case HomeElement.baseReservation:
                        // TODO: Handle this case.
                        break;
                      case HomeElement.faq:
                        // TODO: Handle this case.
                        break;
                      case HomeElement.social:
                        // TODO: Handle this case.
                        break;
                    }
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        item.imagePath,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        item.title,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
