import 'package:authenticate/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
              decoration: BoxDecoration(
                // border: Border.all(style:BorderStyle.solid)
              ),
              height: MediaQuery.of(context).size.height * 3/4 - 20,
              child: Column(children: [
                Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height/3 - 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Image(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.cover,
                  height: 80,
                ),
                SizedBox(height: 20,),
                Text("Sign Up", style:
                  TextStyle(color:Colors.black,fontSize: 25, fontWeight: FontWeight.w400)
                ),
              ],
            )
          ),
          form(context),

              ],),
            ),



            Container(
              height: MediaQuery.of(context).size.height/4 + 20,
              child: Column(children: [
                Container(
            alignment: Alignment.center,
            child: Text("or",style: TextStyle(color: Colors.grey[600], fontSize: 18)),
          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            social('assets/google.jpg'),
            social('assets/fb.png'),
            social('assets/twitter.png'),
            social('assets/instagram.jpg')
          ],),
          Spacer(),

          Padding(
            padding: const EdgeInsets.only(bottom:15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ",style: TextStyle(color: Colors.grey[600])),
                InkWell(
                  onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage(),));
                      },
                  child: Text("Sign In",  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),))
              ],
            ),
          )
              ],),
            ),
            
          

          ]
        )
      ),
    );
  }

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

  Widget form(context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:15),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
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
            SizedBox(height: 40,),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal:20),
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 120, 90, 1),
                borderRadius: BorderRadius.circular(40)
              ),
              child:Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),
            )
          ],
        ),
      ),
    );
  }
}