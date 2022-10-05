
import 'package:app_kgs/pages/bottom.dart';
import 'package:app_kgs/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

 void main() {
   runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(

      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primaryColor: Primary
       ),

       home: AnimatedSplashScreen(
           
         splash: Container(
                           
                         height: 1000,
                         width: 1000,
                          decoration: BoxDecoration(
                          
                            borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                   fit:BoxFit.fitHeight ,
                                  image: AssetImage("assets/Images/air.jpg")
                                   
                                  )


                                  
                          ),

                          child:  Padding(
                            padding: const EdgeInsets.only(

                              top: 30,
                            right: 30,
                            ),
                            
                            
                          ),
                        ),
         nextScreen:bottombar() ,
         splashTransition: SplashTransition.fadeTransition,
         backgroundColor: Colors.white,
         duration: 500,
        ),
    );
  }
}