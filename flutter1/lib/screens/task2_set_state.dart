import 'package:flutter/material.dart';

///////////////////////////     EyeIcon     ///////////////////////////      
      
class EyeIcon extends StatefulWidget {
  const EyeIcon({super.key});

  @override
  State<EyeIcon> createState() => _EyeIconState();
}

class _EyeIconState extends State<EyeIcon> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return
      
       Scaffold(
         body: Padding(
           padding: const EdgeInsets.all(20),
           child: Center(
             child: TextField(
              obscureText: !isVisible,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child:
                          Icon(isVisible ? Icons.visibility : Icons.visibility_off)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(30))),
                   
                 ),
           ),
         ),
       );
  }
}
