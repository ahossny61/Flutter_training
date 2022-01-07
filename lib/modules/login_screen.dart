import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:train_step3/shared/components/components.dart';

class LoginScreen extends StatelessWidget{
  var emailController=TextEditingController();
  var passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: Icon(Icons.menu,),
           title:Text('Login Screen'),

     ),
     body: Container(
       child: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Center(
           child: SingleChildScrollView(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Login'
                 ,style: TextStyle(
                       fontSize: 40,
                       fontWeight:FontWeight.w700 ),
                 ),
                 SizedBox(height: 20.0,),
                 TextFormField(
                   controller: emailController,
                   keyboardType:TextInputType.emailAddress ,
                   decoration: InputDecoration(
                     labelText: 'Email',
                     //border: InputBorder.none
                     border: OutlineInputBorder(),
                     prefixIcon: Icon(Icons.email)
                   ),
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.blue
                   ),
                  /* onFieldSubmitted: (String value){
                     print(value);
                   },
                   onChanged: (String v){},
                   */

                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 TextFormField(
                   controller: passController,
                   obscureText: true,
                   keyboardType: TextInputType.visiblePassword,
                   decoration: InputDecoration(
                     labelText: 'Password',
                     border: OutlineInputBorder(),
                     prefixIcon: Icon(Icons.lock),
                     suffixIcon: Icon(Icons.remove_red_eye)
                   ),
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.blue
                   ),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 defaultButton(function: (){print(emailController);}, text: 'login',radius: 10.0),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Don\'t have an account ?',
                     ),
                     TextButton(onPressed: (){ }, child:Text('Register Now'))
                   ],
                 )
               ],
             ),
           ),
         ),
       ),
     ),
   );
  }

}