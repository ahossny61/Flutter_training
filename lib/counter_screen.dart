
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter=0;

  //1.Constructor
  //2.InitState
  //3.Build

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Scrren'),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
              counter--;
            });
              }, child: Text('Minus',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('${counter}',style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),),
            ),
            TextButton(onPressed: (){setState(() {
              counter++;
            });}, child: Text('Add',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }


}