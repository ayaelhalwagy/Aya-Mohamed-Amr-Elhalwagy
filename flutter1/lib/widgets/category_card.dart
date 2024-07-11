import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter1/screens/questions_screen.dart';

class CategoryCard extends StatelessWidget {
  final String quizName;
  final Color quizColor;

  const CategoryCard(
      {super.key, required this.quizName, required this.quizColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          onTap:  () => Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  QuestionsScreen(),
                  )),
          child: Container(
              color: quizColor,
              child: Center(
                child: Text(quizName, style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              )),
        ));
  }
}
