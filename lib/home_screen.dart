
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar:AppBar(
        leading: Icon(
          Icons.menu,),
        title: Text('MY First App With Flutter',),
        actions: [Icon(Icons.search),Icon(Icons.notification_important)],
        centerTitle: false,
        elevation: 20.0,
      ) ,
    );
  }

}