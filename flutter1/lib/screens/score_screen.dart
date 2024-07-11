import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter1/screens/category_screen.dart';
import 'package:flutter1/screens/landing_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello Aya, you have finished the quiz, and your score is'),
            Text(
              '15/20',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: Colors.red),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => LandingScreen(),
                  ),
                  ModalRoute.withName('//'),
                  );
                },
                child: Text('Play again')),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => LandingScreen(),
                      ));
                },
                child: Text('Exit'))
          ],
        ),
      ),
    );
  }
}
