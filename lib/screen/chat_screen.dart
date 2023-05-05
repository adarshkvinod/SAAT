import 'package:flutter/material.dart';

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
         child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
            Text("Conversations",style: TextStyle(fontSize: 25),),
            const SizedBox(width: 70),
          
            IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
             const SizedBox(width: 3),
            
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
         ),
       ),

      ),
     
      body: Column(
        
      ),
    );
  }
}