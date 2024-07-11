import 'package:flutter/material.dart';
import 'package:flutter1/screens/score_screen.dart';

class QuestionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {},
        ),
        actions: [
          Icon(Icons.message),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.notification_add,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 12,
          )
        ],
        title: Text("Quiz app"),
        // centerTitle: false,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "1st Qestion",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "What is the last country to host the world cup?",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => ScoreScreen(),
                        ));
                  },
                  child: Text("USA")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => ScoreScreen(),
                        ));
                  },
                  child: Text("Qatar")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => ScoreScreen(),
                        ));
                  },
                  child: Text("France")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => ScoreScreen(),
                        ));
                  },
                  child: Text("Egypt")),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
      ),
    );
  }
}
