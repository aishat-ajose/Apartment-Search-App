import 'package:authenticate/Widget/widget.dart';
import 'package:authenticate/authenticate/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignInPage extends StatelessWidget {
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
              fp(context, "Sign In"),
              form(context, 'Sign In'),
              Container(
                padding: EdgeInsets.symmetric(vertical:15),
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
                  Text("Don't have an account? ",style: TextStyle(color: Colors.grey[600])),
                  InkWell(
                    onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
                        },
                    child: Text("Sign up",  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),))
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}