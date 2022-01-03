
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar:AppBar(
        leading: Icon(
          Icons.menu,),
        title: Text('MY First App With Flutter',),
        actions: [
          IconButton(onPressed:onNotification , icon:Icon(Icons.search)),
          IconButton(onPressed: (){print("hello world");}, icon:  Icon(Icons.notification_important))
         ],
        centerTitle: false,
        elevation: 20.0,
      ) ,
    );
  }
  void onNotification(){
    print("notification");
  }
}