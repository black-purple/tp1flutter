import 'package:flutter/material.dart';

import 'details_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map> days = [
    {'title': 'Monday', 'description': 'First day of the week'},
    {'title': 'Tuesday', 'description': 'Second day of the week'},
    {'title': 'Wednesday', 'description': 'Third day of the week'},
    {'title': 'Thursday', 'description': 'Fourth day of the week'},
    {'title': 'Friday', 'description': 'Fifth day of the week'},
    {'title': 'Saturday', 'description': 'Sixth day of the week'},
    {'title': 'Sunday', 'description': 'Seventh day of the week'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Days of the week"),
      ),
      body: ListView.separated(
        itemCount: days.length,
        separatorBuilder: (_, index) => const Divider(
          thickness: .3,
          color: Colors.black,
        ),
        itemBuilder: (_, index) => ListTile(
          title: Text(
            days[index]['title'],
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => DetailsPage(
                title: days[index]['title'],
                description: days[index]['description'],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
