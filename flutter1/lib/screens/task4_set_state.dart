import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  Task4({super.key});

  @override
  _Task4State createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  int numOfCase = 3;
  late Widget contentWidget;
  @override
  Widget build(BuildContext context) {
    switch (numOfCase) {
      case 0:
        contentWidget = Center(
              child: Text(
                'Pub.dev',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
        );
        break;
      case 1:
        contentWidget = Container(
          height: 200,
          width: 200,
          child: Image.asset('assets/images/logo.png'),
        );
        break;
      case 2:
        contentWidget = Center(
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 90,
          ),
        );
        break;
      default:
        contentWidget = Container(); // Default case
    }

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            contentWidget,
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                
                onPressed: () {
                  setState(() {
                    numOfCase = 0;
                  });
                }, 
                child: Text('Show text'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    numOfCase = 1;
                  });
                },
                child: Text('Show cubit image'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    numOfCase = 2;
                  });
                },
                child: Text('Show the red circle'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    numOfCase = 3;
                  });
                },
                child: Text('Reset'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
