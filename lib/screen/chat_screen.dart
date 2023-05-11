import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saat/config/color.dart';
import 'package:saat/screen/home_page.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
       centerTitle: true,
       title: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: SingleChildScrollView(
             child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){const HomePage();}, icon: const Icon(Icons.arrow_back_ios)),
                const Text("Conversations",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: blue3),),
                const SizedBox(width: 40),
              
                IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                 const SizedBox(width: 3),
                
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
               
              ],
             ),
           ),
         ),
       ),

      ),
     
      body:SingleChildScrollView(
        child: Column(children:  [
           const Padding(
           padding: EdgeInsets.all(20.0),
           child: CupertinoSearchTextField(
            backgroundColor:purewhite,
                    autocorrect: true,
           ),
          
           
           
         ),
         const SizedBox(height: 13),
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(children:  [
            CircleAvatar(backgroundColor: blue3,radius: 30,),
            SizedBox(width: 20,),
            Text("Sinan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: blue3),),
            SizedBox(width: 190,),
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: blue3,))
           ],),
           
         ),
           Padding(
           padding: const EdgeInsets.all(20.0),
           child: SingleChildScrollView(
             child: Row(children: [
              CircleAvatar(backgroundColor: blue3,radius: 30,),
               SizedBox(width: 20,),
              Text("Adarsh",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: blue3),),
              SizedBox(width: 178,),
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: blue3,))
             ],),
           ),
           
         ),
           Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(children: const [
            CircleAvatar(backgroundColor: blue3,radius: 30,),
             SizedBox(width: 20,),
            Text("Shahabas",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: blue3),)
           ],),
           
         ),
           Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(children: const [
            CircleAvatar(backgroundColor: blue3,radius: 30,),
             SizedBox(width: 20,),
            Text("Kili",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: blue3),)
           ],),
           
         ),
           Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(children: const [
            CircleAvatar(backgroundColor: blue3,radius: 30,),
             SizedBox(width: 20,),
            Text("Gopika",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: blue3),)
           ],),
           
         ),
           Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(children: const [
            CircleAvatar(backgroundColor: blue3,radius: 30,),
             SizedBox(width: 20,),
            Text("Thaju",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: blue3),)
           ],),
           
         ),
           Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(children: const [
            CircleAvatar(backgroundColor: blue3,radius: 30,),
             SizedBox(width: 20,),
            Text("Ram",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: blue3),)
           ],),
           
         ),
           Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(children: const [
            CircleAvatar(backgroundColor: blue3,radius: 30,),
             SizedBox(width: 20,),
            Text("Sinan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: blue3),)
           ],),
           
         )
         
         
         
         
         
         
         
         
        ],),
      ) 
      
      
       
      );
  
  }
}