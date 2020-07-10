import 'package:authenticate/homepage.dart';
import 'package:flutter/material.dart';

Widget social(String imgPath){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    elevation: 3,
      child: Container(
      width: 55,
      height: 55,
      child: Image(image: AssetImage(imgPath), ),
    ),
  );
}

Widget fp(BuildContext context,  String text){
  return Container(
    margin: EdgeInsets.only(top:60),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('assets/logo.png'),
          fit: BoxFit.cover,
          height: 70,
        ),
        SizedBox(height: 20,),
        Text(text, style:
            TextStyle(color:Colors.black,fontSize: 25, fontWeight: FontWeight.w600)
          ),
        
      ],
    )
  );
}


Widget form(context, String type){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:15),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            type == 'Sign In' ? Container() : TextFormField(
              decoration: InputDecoration(
                labelText: 'Username'
              )
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email'
              )
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password'
              )
            ),
            type == "Sign In" ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text("Forgot password?",style: TextStyle(color: Colors.grey[400])),
              ),
            ): Container(),
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal:20),
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 120, 90, 1),
                borderRadius: BorderRadius.circular(40)
              ),
              child:InkWell(
                  onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                      },
                child: Text(type, style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),)),
            )
          ],
        ),
      ),
    );
  }