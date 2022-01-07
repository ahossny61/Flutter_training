
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train_step3/models/user/user_model.dart';


class UserScreen extends StatelessWidget{
  List<UserModel>users=[
    UserModel(id: 1, name: 'Ahmed Hossny', phone: '12345'),
    UserModel(id: 2, name: 'Walid Sayed', phone: '12345'),
    UserModel(id: 3, name: 'Amr Sayed', phone: '13185449'),
    UserModel(id: 4, name: 'Mahmoud Sayed', phone: '4646484648'),
    UserModel(id: 5, name: 'Mohammed Hanafy', phone: '12345'),
    UserModel(id: 6, name: 'Ahmed Mustafa', phone: '12345'),
    UserModel(id: 7, name: 'Antably', phone: '12345'),
    UserModel(id: 8, name: 'Shaban ', phone: '13185449'),
    UserModel(id: 9, name: 'Ahmed Alaa', phone: '4646484648'),
    UserModel(id: 10, name: 'Yossef Mahfouz', phone: '12345'),
    UserModel(id: 10, name: 'Abdelhamid', phone: '12345'),
    UserModel(id: 10, name: 'GG\'hhhhhhhhhhhhhhhh\'', phone: '12345'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body:
        ListView.separated(itemBuilder: (context,index)=>BuildUserItem(users[index]), separatorBuilder: (context,index)=>Padding(
          padding: const EdgeInsetsDirectional.only(start: 15.0),
          child: Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[300],

          ),
        ), itemCount: users.length),


    );

  }

Widget BuildUserItem(UserModel user)=>Padding(
  padding: const EdgeInsets.all(15.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 25.0,
        child:Text('${user.id}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      SizedBox(width: 10.0,),
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${user.name}',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.ellipsis,),
            Text('${user.phone}',maxLines: 1,overflow: TextOverflow.ellipsis,),
          ],
        ),
      )
    ],
  ),
);

}