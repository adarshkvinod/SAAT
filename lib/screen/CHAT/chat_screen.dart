import 'package:flutter/material.dart';
import 'package:saat/config/color.dart';

class ChatViewScreen extends StatefulWidget {
  const ChatViewScreen({super.key});

  @override
  State<ChatViewScreen> createState() => _ChatViewScreenState();
}

class _ChatViewScreenState extends State<ChatViewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purewhite,
         leading:
            Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios)),
              ],
            ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/DemoImage1.jpeg'),
              ),
              Text('shahabas')
            ],
          ),
         
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.call)),
            IconButton(onPressed: (){}, icon: Icon(Icons.video_call_outlined)),
           
             
          ],
         
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.photo_camera),),
              
              suffixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 IconButton(onPressed: (){}, icon: const Icon(Icons.mic_rounded),),
                 IconButton(onPressed: (){}, icon:const  Icon(Icons.photo),),
                  
                ],
              ),
              hintText: 'Message...',
              hintStyle: TextStyle(fontStyle: FontStyle.normal),
            ),
          )
          ],
        ),
      ),
    );
  }
}