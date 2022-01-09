import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_step3/modules/counter_screen/cubits/cubits.dart';
import 'package:train_step3/modules/counter_screen/cubits/states.dart';

class CounterScreen extends StatelessWidget {
  int counter = 0;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context,state){},
        builder: (context,state){
          return  Scaffold(
          appBar: AppBar(
          title: Text('Counter Scrren'),
          ),
          body: Center(
          child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextButton(
          onPressed: () {
          CounterCubit.getObject(context).Minus();
          },
          child: Text(
          'Minus',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
          '${CounterCubit.getObject(context).counter}',
          style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
          ),
          ),
          TextButton(
          onPressed: () {
            CounterCubit.getObject(context).Add();
          },
          child: Text(
          'Add',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          ],
          ),
          ),
          );
        },
      ),
    );
  }
}
