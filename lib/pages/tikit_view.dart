import 'package:app_kgs/utils/app_layput.dart';
import 'package:app_kgs/utils/widgets/thick_container.dart';
import 'package:flutter/material.dart';

class TickitView extends StatelessWidget {
  const TickitView({super.key});

  get constraints => null;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(22),
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "NYC",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                        child: Stack(children: <Widget>[
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder:
                                  (BuildContext, BoxConstraints constraints) {
                                print(
                                    "the Width is ${constraints.constrainWidth()}");
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                            width: 3,
                                            height: 2,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.white),
                                            ))));
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Row(

                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New-York",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        " 8H 30M",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),

                         SizedBox(
                        width: 100,
                        child: Text(
                          "London",

                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),



                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
