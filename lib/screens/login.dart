import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
  
}

Widget email() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
  color: Colors.black,
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
),
        ),
        SizedBox(height: 15.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
),
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff4285F4),
              ),
              hintText: 'Enter your Email',
              hintStyle: TextStyle(
  color: Colors.black54,
  fontFamily: 'OpenSans',
),
            ),
          ),
        ),
      ],
    );
  }


  Widget password() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
  color: Colors.black,
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
),
        ),
        SizedBox(height: 15.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
),
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.vpn_key,
                color: Color(0xff4285F4),
              ),
              hintText: 'Enter your Passwrd',
              hintStyle: TextStyle(
  color: Colors.black54,
  fontFamily: 'OpenSans',
),
            ),
          ),
        ),
      ],
    );
  }









class _loginpageState extends State<loginpage> {
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
              Text("Welcome Back",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),),
              Image(image: AssetImage('images/screen3.png')),
              email(),
              SizedBox(height: 30.0,),
              password(),
              SizedBox(height:10.0),
              Container(
                alignment: Alignment.centerRight,
                child: RichText(text: TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(color: Colors.black,fontSize: 13.0,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: ' Sign Up',style: TextStyle(color:Color(0xff4285F4),fontWeight: FontWeight.bold,fontSize: 14.0)),  
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
                    child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
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

