import 'package:authenticate/signin.dart';
import 'package:flutter/material.dart';

class FP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height/2 - 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                Image(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.cover,
                  height: 80,
                ),
                SizedBox(height: 30,),
                Text("Roomy", style:
                  TextStyle(color:Color.fromRGBO(255, 100, 87, 1), letterSpacing: 2, fontSize: 30, fontWeight: FontWeight.w500)
                ),
                SizedBox(height: 10,),
                Text("Find your roomate today", style: 
                  TextStyle(color:Colors.grey[500], wordSpacing: 2, fontSize: 15)
                ,)
              ],
            )
          ),
          Container(
            margin: EdgeInsets.only(top:15),
            decoration: BoxDecoration(

                  gradient: new LinearGradient(
                    colors: [Color.fromRGBO(255, 110, 87,1),Color.fromRGBO(255, 40, 80,1)],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.0, 1.0),
                    stops: [0.5, 1.0],
                    tileMode: TileMode.clamp),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35.0),
                  ),
                ),
            child: Stack(
              children: [
                ClipPath(
                  clipper: CustomRectClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                      color:Colors.white,
                    ),
                    height:MediaQuery.of(context).size.height/2 + 85,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage(),));
                      },
                      child: Text("Start", style: TextStyle(fontSize:20,color:Colors.white, fontWeight: FontWeight.bold),))
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}

class CustomRectClipper extends CustomClipper<Path>{
@override
 Path getClip(Size size) {
   Path path = new Path();
    path.lineTo(0.0,140);
    path.lineTo(40,180);
    path.quadraticBezierTo(75, 210, 110,180);
    path.lineTo(size.width-90, 30.0);
    path.quadraticBezierTo(size.width-50, 0.0, size.width-30,0.0);
    return path;
 }
 @override
 bool shouldReclip(CustomClipper<Path> oldClipper) {

 return false;
 }
}
