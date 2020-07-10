import 'package:authenticate/Widget/widget.dart';
import 'package:authenticate/authenticate/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom:15),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              fp(context, "Sign Up"),
              form(context, "Sign Up"),
              Container(
                padding: EdgeInsets.symmetric(vertical:20),
                alignment: Alignment.center,
                child: Text("or",style: TextStyle(color: Colors.grey[600], fontSize: 20)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  social('assets/google.png'),
                  social('assets/fb.png'),
                  social('assets/twitter.png'),
                  social('assets/instagram.jpg')
                ],
              ),
              Spacer(),

              Row(
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
            ],
          ),
        )
      ),
    );
  }


  
}