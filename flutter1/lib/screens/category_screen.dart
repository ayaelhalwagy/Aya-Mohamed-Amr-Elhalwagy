import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter1/widgets/category_card.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  List data = [
    {'name': 'IQ quiz', 'color': Colors.red},
    {'name': 'Sports quiz', 'color': Colors.white},
    {'name': 'History quiz', 'color': Colors.green},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (int i = 0; i < data.length; i++)
          CategoryCard(
            quizName: data[i]['name'],
            quizColor: data[i]['color'],
          ),
      ],
    ));
  }
}
