import 'package:flutter/material.dart';
import 'package:train_step3/home_screen.dart';
import 'package:train_step3/login_screen.dart';
import 'package:train_step3/messenger_screen.dart';
import 'package:train_step3/user_screen.dart';

void main() {
  MyApp app=MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home:HomeScreen(),
      home:UserScreen()
    );

  }

}
