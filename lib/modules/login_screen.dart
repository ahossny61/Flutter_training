import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:train_step3/shared/components/components.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController=TextEditingController();
  var passController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool isSecure=true;
  //IconData eyeIcon=Icons.remove_red_eye;

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
             child: Form(
               key: formKey,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Login'
                   ,style: TextStyle(
                         fontSize: 40,
                         fontWeight:FontWeight.w700 ),
                   ),
                   SizedBox(height: 20.0,),
                   defaultFormField(
                       label: 'Email',
                       controller: emailController,
                       type: TextInputType.emailAddress,
                       onValidateFunc: (value){
                         if(value!.isEmpty){
                           return 'Email must not be empty!';
                         }
                         return null;
                       },
                       prefixIcon: Icons.email,
                   ),
                   SizedBox(
                     height: 10.0,
                   ),
                   defaultFormField(
                       label: 'Password',
                       controller: passController,
                       type: TextInputType.visiblePassword,
                       onValidateFunc: (value){
                         if(value!.isEmpty){
                           return 'Password must not be epmty';
                         }
                         return null;
                       },
                       prefixIcon: Icons.lock,
                       suffixIcon: isSecure?Icons.visibility:Icons.visibility_off,
                       isSecure: isSecure,
                       suffixPressedFunc: (){
                         setState(() {
                           isSecure=!isSecure;
                         });
                       }
                   ),
                   SizedBox(
                     height: 10.0,
                   ),
                   defaultButton(
                       function: (){
                         if(formKey.currentState!.validate()){
                           print(emailController.text);
                         }},
                       text: 'login',
                       radius: 10.0
                   ),
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
     ),
   );
  }
}