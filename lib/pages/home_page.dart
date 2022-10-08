
import 'package:app_kgs/pages/tikit_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(15, 48, 37, 40),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Good Morning",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17)),
                          Gap(5),
                          Text("Book Tickits",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/Images/air.jpg"))),
                      )
                    ],
                  ),
                      Gap(25),
                    Container(
                         decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color:  Color( 0xFFF4F6FD),
                         ),
                          padding: EdgeInsets.symmetric( horizontal: 12,  vertical: 12 ), 
                      child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          " Search ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                  ),
                    ),
                   Gap( 40),
                       Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                        children:  <Widget>[
   
                             
                            Text("Upcomming Flights",

                                        style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold)
                              
                            ),
                             InkWell(

                              onTap: (){
                                print("bdsk lode kya chul machhi hai gand me ");
                              },
                               child: Text(" View All",
                               style: TextStyle(
                                 fontSize: 16, color:Colors.grey, fontWeight: FontWeight.w500
                               ),),
                             )
                        ],
                    )  
                ],
              ),
            ),
           
            Gap(15),
           TickitView(),
        
          ],
        ));
  }
}
