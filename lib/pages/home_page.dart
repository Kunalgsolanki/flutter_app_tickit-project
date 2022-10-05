import 'dart:ui';

import 'package:app_kgs/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: styles.bgColor,
        body: ListView(
          children: <Widget>[
            Container(

               padding: EdgeInsets.symmetric(
                  horizontal: 20
               ),
              child: Column(
                children: <Widget>[
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                         Column(
                             crossAxisAlignment: CrossAxisAlignment.start,       
                             children: <Widget> [
                                 Text("Good Morning",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               
                                 Text( "Book Tickits",
                                 style: TextStyle(

                                  color: Colors.black,
                                 
                                 
                                 ),
                                 
                                 )
                             ],
                         ),

                           
                        Container(
                           
                         height: 50,
                         width: 50,
                          decoration: BoxDecoration(
                          
                            borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                   fit:BoxFit.fitHeight ,
                                  image: AssetImage("assets/Images/air.jpg"))
                          ),
                        )
                    
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
