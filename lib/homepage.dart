import 'package:authenticate/details.dart';
import 'package:authenticate/Model/room.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List<Room> rooms = [
    Room(
      address: '2 West Hill Lane,',
      city: 'Levittown, NY 11756',
      price: '\$37,789',
      features: ['3 bed', '2 Bath'],
      pictures: ['assets/h4.jpeg', 'assets/h2.jpeg', 'assets/h1.jpeg']
    ),

    Room(
      address: '94 N. Harrison Lane',
      city: 'Murfreesboro, TN 37128',
      price: '\$45,799',
      features: ['3 Bed', '1 Bath'],
      pictures: ['assets/h5.jpeg', 'assets/h1.jpeg', 'assets/h3.jpeg']
    ),

    Room(
      address: '8837 New Saddle Lane',
      city: 'Dedham, MA 02026',
      price: '\$56,790',
      features: ['2 Bed', '1 Bath'],
      pictures: ['assets/h1.jpeg', 'assets/h2.jpeg', 'assets/h4.jpeg']
    ),

    Room(
      address: '9 Miles Road',
      city: 'Lake Charles, LA 70605',
      price: '\$32,908',
      features: ['1 Bed', '1 Bath'],
      pictures: ['assets/h3.jpeg', 'assets/h2.jpeg', 'assets/h5.jpeg']
    ),

    Room(
      address: '8835 Boston Ave',
      city: 'Glendale, AZ 85302',
      price: '\$45,667',
      features: ['3 Bed', '2 bath'],
      pictures: ['assets/h1.jpeg', 'assets/h4.jpeg', 'assets/h3.jpeg']
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: rooms.length,
        itemBuilder: (context, index) => room(context, rooms[index])),
    );
  }

  Widget room(context, Room room){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal:20, vertical:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(room.address, style: TextStyle(fontWeight: FontWeight.bold,fontSize:20)),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text(room.price, style: TextStyle(color: Colors.purple),))
              ],
            ),
            SizedBox(height: 5,),
            Text(room.city, style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            Row(
              children: [
                featureContainer(context, room.features),
                imageContainer(context, room.pictures[0]),
                imageContainer(context, room.pictures[1]),
                imageContainer(context, room.pictures[2])
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget featureContainer(context, List<String> features){
    return Container(
      height: 100,
      width: (MediaQuery.of(context).size.width-40)/4,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 100, 87, 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Text(features[0],style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Text(features[1],style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
        ]
      ),
    );
  }

  Widget imageContainer(context, String imgPath){
    return Container(
      height: 100,
      width: (MediaQuery.of(context).size.width-40)/4,
      decoration: BoxDecoration(
      ),
      child: Image.asset(imgPath, fit:BoxFit.cover),
    );
  }
}