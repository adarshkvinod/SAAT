import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:saat/config/color.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: SingleChildScrollView(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
              
            
            ]),
          ),
       
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Add profile photo",style: TextStyle(fontSize: 30,color: blue3,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                
              ],
            ),
            const SizedBox(height: 12,),
            const Text("Add a profile photo so that your friends know it's you.",style: TextStyle(color: black,fontWeight: FontWeight.bold),),
            const SizedBox(height: 100,),
         Image.asset('assets/images/add_profilepic.png',width: 200,height: 200,),
         const SizedBox(height: 210),
         ElevatedButton(onPressed: (){}, child:const Text("Add photo")),
         TextButton(onPressed: (){}, child: const Text("skip",style: TextStyle(fontSize: 18),))
          ],
        ),
      ),
    )
    );
  }
}