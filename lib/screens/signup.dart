import 'package:flutter/material.dart';
import 'package:app/screens/login.dart';


class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal:40.0,
            vertical:120.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Become A Member",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),),
              Image(image: AssetImage('images/screen3.png')),
              email(),
              SizedBox(height: 30.0,),
              password(),
              SizedBox(height:10.0),
              Container(
                alignment: Alignment.centerRight,
                child: RichText(text: TextSpan(
                  text: "Already have an account?",
                  style: TextStyle(color: Colors.black,fontSize: 13.0,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: ' Login',style: TextStyle(color:Color(0xff4285F4),fontWeight: FontWeight.bold,fontSize: 14.0)),  
                  ],
                )),
              ),
              SizedBox(height:40.0),
              Container(
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Color(0xff4285F4),
                  
                ),
                child: FlatButton(
                  onPressed: (){
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}