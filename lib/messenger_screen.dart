
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MessengerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 15.0,
        elevation:0.0,
        title: Row(
          children: [
            CircleAvatar(
            radius: 20.0,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?=4'),
            ),
            SizedBox(width: 10.0,),
            Text('Chats',style: TextStyle(fontSize: 25,color: Colors.black),)
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 15.0,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color:Colors.white,size: 15,))),
          SizedBox(width: 10.0,),
          CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 15.0,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.edit,color:Colors.white,size: 15,))),
          SizedBox(width: 10.0,),
        ]
        ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10.0,),
                    Text('Search')
                  ],
                ),
              ),

              Container(
                height: 120.0,
                child: ListView.separated(

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>BuildStoryItem(),itemCount: 10,
                  separatorBuilder: (context,index)=>SizedBox(width: 25.0,),
                ),
              ),
              SizedBox(height: 25.0,),
              Container(
                width: double.infinity,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)=>BuildChatItem(), separatorBuilder:(context,index)=>SizedBox(height: 25.0,), itemCount: 25
                ),
              )

            ],
          ),
        ),
      ),

    );
  }

  // to make List
  //1.build item
  //2.biuld List
  //3.add item to list

  Widget BuildChatItem()=>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children:[
          CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?=4'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 2.0,end: 2.0),
            child: CircleAvatar(
              radius: 6.0,
              backgroundColor: Colors.red,
            ),
          ),

        ],
      ),
      SizedBox(width: 5.0,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ahmed Hossny Hamid ',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),),
            SizedBox(height: 5.0,),
            Row(
              children: [
                Expanded(
                  child: Text('How Are You ,MAn',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Text('05.00 Pm')

              ],
            )
          ],
        ),
      )

    ],
  );
  Widget BuildStoryItem()=> Container(
    width: 50,
    child: Column(
      children: [
        SizedBox(height: 20,),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children:[
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?=4'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 2.0,end: 2.0),
              child: CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.red,
              ),
            ),

          ],
        ),
        SizedBox(height: 5.0,),
        Text('Ahmed Hossny Hamid',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,)
      ],
    ),
  );

}