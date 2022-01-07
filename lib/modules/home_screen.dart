import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        leading: Icon(
        Icons.menu,),
    title: Text('MY First App With Flutter',),
    actions: [
    IconButton(onPressed:onNotification , icon:Icon(Icons.search)),
    IconButton(onPressed: (){print("hello world");}, icon: Icon(Icons.notification_important))
    ],
    centerTitle: false,
    elevation: 20.0,
    ),
    body:Container(

    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      //IMage
    Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0)
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children:[
            Image(image: NetworkImage('https://www.pikpng.com/pngl/b/301-3014000_view-fullsize-uzumaki-naruto-image-naruto-ultimate-ninja.png'),
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
            Container(
              width: 150,
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: Text('Naruto',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
                textAlign: TextAlign.center,
              ),

            )
        ]),
      ),
    )
    ]
    ,
    ),
    ),
    );
    }

  void onNotification() {
    print("notification");
  }
}