import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: Stack(
                children:[
                  Container(
                    height: MediaQuery.of(context).size.height/2,
                    child: Image.asset('assets/h2.jpeg', fit:BoxFit.cover),
                  ),
                  Positioned(
                    bottom: 10,
                    left: MediaQuery.of(context).size.width/2 - 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        prog(Colors.white),
                        prog(Colors.grey[400]),
                        prog(Colors.grey[400]),
                        prog(Colors.grey[400]),
                        prog(Colors.grey[400]),
                      ]
                    ),
                  )
                ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal:10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 10,),
                  Text('Use this tool as test data for an automated system or find your next pen pal by cold snail-mailing letter to a random address. If its not an actual address, the post office should return it back to sender.It may just be fun to annoy your local post office by mailing letters to these locations. They\'ll have figure out that its an incorrect address and get it back to you.',
                  style:TextStyle(fontSize: 17, color: Colors.black54),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      featureContainer(context, '1 Bedroom'),
                      featureContainer(context, 'Laundry'),
                      featureContainer(context, 'Gym'),
                      featureContainer(context, '3 Bathroom'),
                    ],
                  )
                ],
              )
            ),
            SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  prog(Colors.black),
                  prog(Colors.grey[400]),
                  prog(Colors.grey[400]),
                  prog(Colors.grey[400]),
                ]
              ),

             Container(
               margin: EdgeInsets.symmetric(horizontal:30, vertical: 10),
               alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.blue[900]
               ),
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Text('Request Information', style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
               ),
             )
          ],
        )
      ),
    );
  }

  Widget prog(Color color){
    return Container(
      margin: EdgeInsets.only(left:2),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle
      ),
    );
  }

  Widget featureContainer(context, String features){
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 70,
      width: (MediaQuery.of(context).size.width-40)/5 + 10,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 100, 87, 1),
      ),
      child: Center(child: Text(features,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
    );
  }

}