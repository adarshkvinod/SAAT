import 'package:flutter/material.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:saat/config/color.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.black,
      body:
       Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [const SizedBox(height: 200,width: 100,),
          Image.asset(
            'assets/images/SaatName.png',alignment: Alignment.center,height: 150,width: 500,
            ),
            const SizedBox(width: 90,height: 200,),
            JumpingDots(
            innerPadding: 5,
            
              color: blue3,
              radius: 9,
              numberOfDots: 4,
          verticalOffset: 9,
              animationDuration:const Duration(milliseconds: 100),
            )
            ],
 
        
      ),
      
     
    );
  }
}