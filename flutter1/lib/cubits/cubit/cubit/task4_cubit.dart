import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'task4_state.dart';

class Task4Cubit extends Cubit<Task4State> {
  Task4Cubit() : super(Reset());

  int numOfCase = 3;
  Widget contentWidget = Container();
  
  void showText() {
    contentWidget = Center(
              child: Text(
                'Pub.dev',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
    );
    emit(ShowText());
  }

  void showImage() {
    contentWidget = Container(
          height: 200,
          width: 200,
          child: Image.asset('assets/images/logo.png'),
        );
    emit(ShowImage());
  }

  void showCircle() {
    contentWidget = Center(
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 90,
          ),
        );
    emit(ShowCircle());
  }

  void reset() {
    contentWidget = Container(); 
    emit(Reset());
  }
}
