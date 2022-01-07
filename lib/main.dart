import 'package:flutter/material.dart';
import 'package:train_step3/modules/counter_screen.dart';
import 'package:train_step3/modules/home_screen.dart';
import 'package:train_step3/modules/login_screen.dart';
import 'package:train_step3/modules/messenger_screen.dart';
import 'package:train_step3/modules/user_screen.dart';

void main() {
  MyApp app=MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home:HomeScreen(),
      home:LoginScreen()
    );

  }

}
