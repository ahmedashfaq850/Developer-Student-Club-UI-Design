import 'package:flutter/material.dart';
import 'package:app/screens/onboardingscreen.dart';



class splashscreen extends StatefulWidget {

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    var d = Duration(seconds:10);

    Future.delayed(d,(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){return onboardingscreen();}), (route) => false);
    });
    // TODO: implement initState
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:130.0),
          child: Column(
            children: [
              Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/welcome.jpg')
                ),
              ),
              ),
              SizedBox(
                height:80,
              ),
              Text("from"),
              RichText(
  text: TextSpan(
    text: '',
    style: TextStyle(
      color:Colors.green,
      fontSize: 23.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.0,
      ),
    children: <TextSpan>[
      TextSpan(text: 'G',style: TextStyle(color:Color(0xff4285F4))),
      TextSpan(text: 'o',style: TextStyle(color:Color(0xffEA4335))),
      TextSpan(text: 'o',style: TextStyle(color:Color(0xffFBBC04))),
      TextSpan(text: 'g',style: TextStyle(color:Color(0xff4285F4))),
      TextSpan(text: 'l',style: TextStyle(color:Color(0xff0F9D58))),
      TextSpan(text: 'e',style: TextStyle(color:Color(0xffEA4335))),
    ],
  ),
)
            ],
          ),
        ),
      ),
    );
  }
}