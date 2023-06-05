import 'package:flutter/material.dart';

import 'package:saat/config/color.dart';

class RecoveryPassword extends StatefulWidget {
  const RecoveryPassword({super.key});

  @override
  State<RecoveryPassword> createState() => _RecoveryPasswordState();
}

class _RecoveryPasswordState extends State<RecoveryPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:  IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios_rounded),),
          automaticallyImplyLeading: false,
        ),
        
        body:
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
            children:  [
              const SizedBox(height:70),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  
                   Text("Forgot your password?",style: TextStyle(fontSize:20,fontStyle: FontStyle.italic,color: blue3,),textAlign: TextAlign.center,)
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                   Text("Enter yor email",style: TextStyle(fontSize: 17,color: blue3),),
                ],),
              ),
             
             TextFormField(
              decoration: const InputDecoration(
               suffixIcon: Icon(Icons.alternate_email_rounded)
              ),
             ),
             const SizedBox(height: 20),
             ElevatedButton(onPressed: (){}, child:const Text("verify") ),
            ],
                 ),
         ),
        )
        );
    }
    }