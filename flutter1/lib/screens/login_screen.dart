import 'package:flutter/material.dart';
import 'package:flutter1/screens/category_screen.dart';
import 'package:flutter1/utils/icons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // or InkWell -> to convert any thing in flutter to button
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 45, 109, 47),
        body: SingleChildScrollView(
          // to macke column scrollable when start typing using mobile keyboard  -> error (enfinty height / expanded )
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Image.asset(
                      logo,
                      height: 160,
                      width: 160,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 2 / 3,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 242, 242),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50))),
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: 'username',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1),
                                  borderRadius: BorderRadius.circular(40)))),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.visibility_off),
                              hintText: 'password',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1),
                                  borderRadius: BorderRadius.circular(40)))),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          //Spacer(),
                          Text('New to quiz app?'),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: 200,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 10,
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                           CategoryScreen(),
                                    ));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))),
                      SizedBox(
                        height: 18,
                      ),
                      Image.asset(
                        fingerprint,
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Use Touch ID',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (val) {}),
                          Text('Remember me'),
                          Spacer(),
                          TextButton(
                              onPressed: () {}, child: Text('Forget Password?'))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
