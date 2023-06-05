import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final String description;
  const DetailsPage({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(description),
      ),
    );
  }
}
