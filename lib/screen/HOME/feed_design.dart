import 'package:flutter/material.dart';

class FeedDesign extends StatefulWidget {
  const FeedDesign({super.key});

  @override
  State<FeedDesign> createState() => _FeedDesignState();
}

class _FeedDesignState extends State<FeedDesign>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Expanded(
               child: ListView.separated(itemBuilder: (context, index){
                return Stack(
                  children:[
                    SizedBox(
                    width: width*0.9,
                    height: height*0.5,
                    child:  Card(
                      elevation: 10.0,
                      child: Image.asset('assets/images/DemoImage3.jpg',height: 40,),
                    
                    ),
                  ),
                   Positioned(
                              left: 10,
                              top: 7,
                              
                              child: CircleAvatar(
                                radius: 22,
                                 backgroundImage: AssetImage('assets/images/DemoImage2.jpg'),                   
                                                      ),
                            ),
                            Positioned(
                              left: 70,
                              top: -5,
                              
                              child:TextButton(onPressed: 
                              (){}, child: const Text('the_adrz',style: TextStyle(color: Colors.black),)),
                              
                            ),
                             
                            
                  ] 
                );
               }, separatorBuilder: (context, _){
                return const SizedBox(height: 20,);
               }, itemCount: 10),
             
             );
            
      }),
    );
    
  }
}