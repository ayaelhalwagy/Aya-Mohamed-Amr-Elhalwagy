import 'package:flutter/material.dart';
import 'package:flutter1/cubits/cubit/cubit/task4_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class cubit4 extends StatelessWidget {
  cubit4({super.key});

  @override
  Widget build(BuildContext context) {
Task4Cubit _cubit4 = context.read<Task4Cubit>();

    return Scaffold(
    body: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          BlocBuilder<Task4Cubit, Task4State>(
            builder: (context, state) {
              return _cubit4.contentWidget;
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(6),
            child: ElevatedButton(
              onPressed: () {
                _cubit4.showText();
              },
              child: Text('Show text'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: ElevatedButton(
              onPressed: () {
                _cubit4.showImage();
              },
              child: Text('Show cubit image'),
            ),
          ),
 Padding(
            padding: const EdgeInsets.all(6),
            child: ElevatedButton(
              onPressed: () {
                _cubit4.showCircle();
              },
              child: Text('Show the red circle'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: ElevatedButton(
              onPressed: () {
                _cubit4.reset();
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