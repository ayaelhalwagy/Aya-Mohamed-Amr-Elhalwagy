import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter1/screens/category_screen.dart';
import 'package:flutter1/screens/landing_screen.dart';
import 'package:flutter1/utils/globals.dart';

class ScoreScreen extends StatelessWidget {
  final int totalScore;
  final int numberOfQuestions;
  const ScoreScreen(
      {super.key, required this.totalScore, required this.numberOfQuestions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
  text: TextSpan(
    text: 'Hello ',
    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.black,fontSize: 15),
    children: <TextSpan>[
      TextSpan(
        text: userName, 
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
      ),
      TextSpan(
        text: ', you have finished the quiz, and your score is',
      ),
    ],
  ),
),


              //child: Text(
                //  "Hello $userName, you have finished the quiz, and your score is "),
            //),
            Text(
              "$totalScore/$numberOfQuestions",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: Colors.red),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => CategoryScreen(),
                    ),
                  );
                },
                child: Text("Play again")),
            OutlinedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => LandingScreen()),
                    ModalRoute.withName('//'),
                  );
                },
                child: Text("Exit")),
          ],
        ),
      ),
    );
  }
}