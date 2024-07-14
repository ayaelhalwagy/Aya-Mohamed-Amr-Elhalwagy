import 'package:flutter/material.dart';

///////////////////////////     FastFilterBar     ///////////////////////////

class FastFilterBar extends StatefulWidget {
  FastFilterBar({super.key});

  @override
  _FastFilterBarState createState() => _FastFilterBarState();
}

class _FastFilterBarState extends State<FastFilterBar> {
  List<String> data = ['قيد التنفيذ', 'الملغية', 'المكتملة', 'تحت المراجعة', 'تمت'];
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 60),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedItemIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: _selectedItemIndex == index
                            ? Colors.red
                            : Color.fromARGB(255, 226, 226, 226),
                      ),
                      child: Center(
                        child: Text(
                          data[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: _selectedItemIndex == index ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            
          ],
        ))
      );
    
  }
}
           