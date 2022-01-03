import 'package:flutter/material.dart';
import 'package:train_step3/home_screen.dart';

void main() {
  MyApp app=MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(),
    );

  }

}
