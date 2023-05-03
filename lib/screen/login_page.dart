import 'package:flutter/material.dart';
import 'package:saat/config/color.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: white,),
      backgroundColor: white,
      body:
      Column(
        children: [
          TextFormField(
            textAlign: TextAlign.start,
            textCapitalization: TextCapitalization.none,
            ),
            TextFormField(
             
  decoration: const InputDecoration(
      labelText: 'Enter your password',
      icon:  Padding(
        padding:  EdgeInsets.only(top: 15.0),
        child:  Icon(Icons.lock),
      )),
 
),

           ],
            ),);
        
     
     
   
  }
}