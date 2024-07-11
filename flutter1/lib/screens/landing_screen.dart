import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:flutter1/utils/icons.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                landingBackground,
              ),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Spacer(),
          Image.asset(appLogo),
          Text(
            "ITI Quiz app",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'),
          ),
          Text(
            "we are creative, enjoy our app",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontFamily: 'Pacifico'),
          ),
          Spacer(),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
