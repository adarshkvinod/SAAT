import 'dart:developer';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saat/config/color.dart';
import 'package:saat/screen/HOME/homepage_provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Consumer<HomePageProvider>(
        builder: (context, HomePagePRovider, _) {
          return Scaffold(
          appBar: AppBar(
           actions: [
            IconButton(onPressed: () {
            }, icon:Icon(Icons.search_outlined),),
            IconButton(onPressed: () {
      
            }, icon:Icon(Icons.favorite_border),),
            
           ],
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:    [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "What's bothering you?",
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/adarsh.jpg")), //fetch the user's profile picture here.
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 55.0,
                    width: 55.0,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Share anything you want?", //store the text 
                          hintStyle: TextStyle(color: Colors.grey)), 
                    ),
                  )
                ],
              ),
             const SizedBox(height: 30,),
             const SingleChildScrollView(scrollDirection: Axis.horizontal,
               child: Row(
                 children:  [
                   Column(
                     children: [
                       CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/DemoImage1.jpeg'),),
                       SizedBox(height: 10,),
                       Text("the_adrz")
                     ],
                   ),
                   SizedBox(width: 20,),
                 Column(
                   children: [
                     CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/DemoImage2.jpg'),),
                     SizedBox(height: 10,),
                     Text('shahabas_')
                   ],
                 ),
                SizedBox(width: 20,),
                 Column(
                   children: [
                     CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/DemoImage3.jpg'),),
                  SizedBox(height: 10,),
                     Text('shahabas_')
                   ],
                 ),
                SizedBox(width: 20,),
                 Column(
                   children: [
                     CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/DemoImage1.jpeg'),),
                    SizedBox(height: 10,),
                     Text('shahabas_')
                   ],
                 ),
                 SizedBox(width: 20,),
                 Column(
                   children: [
                     CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/DemoImage2.jpg'),),
                    SizedBox(height: 10,),
                     Text('shahabas_')
                   ],
                 ),
                 SizedBox(width: 20,),
                 Column(
                   children: [
                     CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/DemoImage2.jpg'),),
                    SizedBox(height: 10,),
                     Text('shahabas_')
                   ],
                 ),
                SizedBox(width: 20,),
                 Column(
                   children: [
                     CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/DemoImage3.jpg'),),
                    SizedBox(height: 10,),
                     Text('shahabas_')
                   ],
                 ),
                SizedBox(width: 20,),
                 Column(
                   children: [
                     CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/DemoImage1.jpeg'),),
                    SizedBox(height: 10,),
                     Text('shahabas_')
                   ],
                 ),
                 SizedBox(width: 20,),
                 Column(
                   children: [
                     CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/DemoImage2.jpg'),),
                    SizedBox(height: 10,),
                     Text('shahabas_')
                   ],
                 ),
                 ],
               ),
             ),
             const SizedBox(height: 20.0),
             
             Expanded(
               child: ListView.separated(itemBuilder: (context, index){
                return Stack(
                  children:[
                    SizedBox(
                    width: width*0.9,
                    height: height*0.3,
                    child: const Padding(
                      padding:  EdgeInsets.all(15.0),
                      child:  Card(
                        elevation: 10.0,
                        child: Column(
                          children: [
                            
                           
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                   Positioned(
                              left: 20,
                              top: -20,
                              child: CircleAvatar(
                                radius: 30,
                                                    
                                                      ),
                            ),
                  ] 
                );
               }, separatorBuilder: (context, _){
                return const SizedBox(height: 20,);
               }, itemCount: 10),
             )
            ]),
          ),
          );
        },
       
      ),
    );
  }
}
