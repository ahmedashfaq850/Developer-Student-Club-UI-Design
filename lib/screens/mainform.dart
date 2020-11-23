import 'package:flutter/material.dart';
import 'package:app/screens/login.dart';
import 'package:app/screens/signup.dart';



class MainForm extends StatelessWidget {

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }


  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'images/facebook.jpg',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'images/google.jpg',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Github'),
            AssetImage(
              'images/github.png',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: "Join with ",
                style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text: 'D',style: TextStyle(color:Color(0xff4285F4),fontWeight: FontWeight.bold)),
                  TextSpan(text: 'S',style: TextStyle(color:Color(0xffEA4335),fontWeight: FontWeight.bold)),
                  TextSpan(text: 'C',style: TextStyle(color:Color(0xffFBBC04),fontWeight: FontWeight.bold)),
                ],
              ),                             
              ),
            Image(
              image: AssetImage('images/screen3.png'),
              width: 200,
              height: 200,
            ),
            SizedBox(height:50.0,),
            Container(
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Color(0xff4285F4),
                  
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return loginpage();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
            Container(
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return signup();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Sign Up",style: TextStyle(color: Color(0xff4285F4),fontSize: 20.0,fontWeight: FontWeight.bold),),
                  ),
                  shape: RoundedRectangleBorder(side: BorderSide(
                  color: Color(0xff4285F4),
                  width: 2,
                  style: BorderStyle.solid
                ), borderRadius: BorderRadius.circular(50)),
                ),
              ),
              SizedBox(height: 30.0,),
              Text("---OR---",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              _buildSocialBtnRow(),
          ],
        ),
      ),
    );
  }
}


