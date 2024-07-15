import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/cubits/cubit/task3_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class Task3_Cubit extends StatelessWidget {
  const Task3_Cubit({super.key});

  @override
  Widget build(BuildContext context) {

    
    Task3Cubit _cubit=context.read<Task3Cubit>();
    return Scaffold(
      body: Column(

        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: _cubit.data.length,
                itemBuilder: (context,index){
                  return  BlocBuilder<Task3Cubit,Task3State>(
                    builder: (context,state){
                      return RadioListTile(
                        title: Text(_cubit.data[index]),
                        value: index,
                        groupValue:_cubit.selectedIndex,
                        onChanged: (value) {
                          _cubit.select();
                          _cubit.selectedIndex = value as int;
                        },
                      );
                    }
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}