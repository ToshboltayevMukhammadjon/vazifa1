import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class HomePage extends StatefulWidget {
  static final String id = "HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness:Brightness.light,
        title:Center(
          child: Text("Ertangi vazifalar",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        ),
        backgroundColor: HexColor("#F2C94C"),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: kvadrat(
                Arang: HexColor("#219653"),
                nomi: "ertalab yugurish",
              ),
            ),
            Container(
              child: kvadrat(
              Arang: HexColor("#EB5757"),
              nomi: "birinchi loyihani qarab chiqish ",
              ),
            ),
            Container(
              child: kvadrat(
                Arang: HexColor("#F2C94C"),
                nomi: "non olib kelish :)",
              ),
            ),
            Container(
              child: kvadrat(
                Arang: HexColor("#219653"),
                nomi: "kitob o’qish",
              ),
            ),
            Container(
              child: kvadrat(
                Arang: HexColor("#2F80ED"),
                nomi: " yana bir narsa ",
              ),
            ),
            Container(
              child: kvadrat(
                Arang: HexColor("#F2994A"),
                nomi: "va yana bitta",
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 10,right: 10),
        height: 150,
        width: 500,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: TextButton(
                      onPressed: (){},
                      child: Container(
                        height: 51,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: HexColor("#219653"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: (){},
                      child: Container(
                        height: 51,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: HexColor("#EB5757"),
                        ),
                      ),
                    ),

                  ),
                  Container(
                    child: TextButton(
                      onPressed: (){},
                      child: Container(
                        height: 51,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: HexColor("#F2C94C"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: (){},
                      child: Container(
                        height: 51,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: HexColor("#2F80ED"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: (){},
                      child: Container(
                        height: 51,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: HexColor("#F2994A"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: HexColor("#333333"),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
                
              ),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),

                      ),
                  ),
                  Container(
                    width: 51,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),
                      color: HexColor("#333333"),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      color: HexColor("#FFFFFF"),
                      onPressed: () {},
                    ),

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget kvadrat ({Arang, nomi,}) {
     return Container(
       margin: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
       height: 58,
       width: 500,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         color:HexColor("#EEEEEE"),
       ),

       child: Row(
         children: [
               Expanded(
                   child:Row(
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                         width: 22,
                         height: 22,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           color: Arang,
                         ),
                       ),
                       SizedBox(width: 30,),
                       Container(
                         child:  Text(
                           nomi,style: TextStyle(color: HexColor("#000000"),fontWeight:FontWeight.w600,fontSize: 18,fontStyle: FontStyle.normal, ),
                         ),
                       ),
                     ],
                   ),
               ),
               Container(
                 width: 51,
                 height: 58,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),
                   color: HexColor("#219653"),
                 ),
                 child: Icon(
                   Icons.check,
                   color: HexColor("#FFFFFF"),
                 ),
               ),
             ],
           ),
     );
  }

}
