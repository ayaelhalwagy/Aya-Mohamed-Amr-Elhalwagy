import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'task3_state.dart';

class Task3Cubit extends Cubit<Task3State> {
  Task3Cubit() : super(Task3Initial());

  int selectedIndex = 0;
  List<String> data = List.filled(20, 'Radio button');

  void select(){

  emit(Task3Initial());
  }
}
