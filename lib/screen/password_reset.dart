import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:saat/config/color.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({super.key});

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: SingleChildScrollView(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_rounded)),
            
            ]),
          ),
       
      ),
      
      body:
       SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
            
            children:  [
            const SizedBox(height:150),
            const Text(
              "Password recovery!",
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,color: blue3),
                ),
             const SizedBox(height:70),
            TextFormField(obscureText: true,
                decoration: const InputDecoration(
                  
                hintText: 'Enter your new password',
                suffixIcon: Icon(Icons.lock),
                
                ),
            ),
            const SizedBox(height: 20,),
             TextFormField(obscureText: true,
                decoration: const InputDecoration(
                hintText: 'Re-enter password',
               
                ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child:const Text("Reset password"))
            ],
               ),
         ),
       ),
    ));
  }
}