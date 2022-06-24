import 'package:faculty_demo_app/career/career_element.dart';
import 'package:flutter/material.dart';

class CareerScreen extends StatelessWidget {
  const CareerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Кариерен център")),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView.builder(
                itemCount: CareerElement.values.length,
                itemBuilder: (context, index) => _buildExpandableItems(CareerElement.values[index]),
              )
      ),
    );
  }

  Widget _buildExpandableItems(CareerElement item) {
    return ExpansionTile(
      title: Text(item.title),
      children: [Text("Центърът за кариерно развитие (ЦКР) е административно звено към ГГФ.")],
      collapsedBackgroundColor: Colors.blue,
      backgroundColor: Colors.blue,
      collapsedTextColor: Colors.white,
      textColor: Colors.white,
    );
  }
}