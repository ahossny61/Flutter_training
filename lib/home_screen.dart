

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
       body:Container(
         color: Colors.purpleAccent,
         width: double.infinity,
         child: Column(
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
           Container(
             height: 50,
             color: Colors.teal,
             child: Text('Hello world',
               style: TextStyle(
                 fontSize: 25,

               ),
             ),

           ),
             Container(
               height: 50,
               color: Colors.red,
               child: Text('Hello world 2',
                 style: TextStyle(
                   fontSize: 20,
                 ),
               ),
             ),
      ] ,
    ),
       ),
     );
  }
  void onNotification(){
    print("notification");
  }
}