import 'package:flutter/material.dart';
import 'package:flutter1/cubits/cubit/cubit/task4_cubit.dart';
import 'package:flutter1/cubits/cubit/task3_cubit.dart';
import 'package:flutter1/screens/task1_set_state.dart';
import 'package:flutter1/screens/task2_set_state.dart';
import 'package:flutter1/screens/task3_using_cubit.dart';
import 'package:flutter1/screens/task4_set_state.dart';
import 'package:flutter1/screens/task4_using_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'app',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: BlocProvider(
          create: (context) => Task3Cubit(),
          child: Task3_Cubit(),
        ));
  }
}
