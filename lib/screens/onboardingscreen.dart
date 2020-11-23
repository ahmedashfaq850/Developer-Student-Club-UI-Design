import 'package:app/screens/mainform.dart';
import 'package:flutter/material.dart';


class onboardingscreen extends StatefulWidget {
  @override
  _onboardingscreenState createState() => _onboardingscreenState();
}

class _onboardingscreenState extends State<onboardingscreen> {

  int _totalpage = 3;
  int _currentpage = 0;
  PageController _pageController = PageController(initialPage: 0);

  List<Widget> _pageIndicator(){
    List<Widget> list = [];
    for(int i=0; i<_totalpage; i++){
      list.add(i == _currentpage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(microseconds: 500),
      margin: EdgeInsets.symmetric(horizontal:8.0),
      height: 8.0,
      width: isActive? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive? Color(0xff3EB654) : Color(0xff3EB654).withOpacity(0.4),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _currentpage != _totalpage-1 ? Container(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0,right:20.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context){
                          return MainForm();
                        }));
                      },
                      child: Text("Skip",style: TextStyle(color:Colors.black,fontSize: 22.0,fontWeight: FontWeight.bold)),
                    ),
                  ),
                ) : Text(""),
              Container(
                height: 600.0,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int index){
                    setState(() {
                      _currentpage = index;
                    });
                  },
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('images/screen1.png'),width: 350.0,height: 300.0,),
                            SizedBox(height: 0.0,),
                            RichText(
                              text: TextSpan(
                                text: "What is ",
                                style: TextStyle(color: Colors.black,fontSize: 36.0,fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(text: 'D',style: TextStyle(color:Color(0xff4285F4),fontWeight: FontWeight.bold)),
                                  TextSpan(text: 'S',style: TextStyle(color:Color(0xffEA4335),fontWeight: FontWeight.bold)),
                                  TextSpan(text: 'C',style: TextStyle(color:Color(0xffFBBC04),fontWeight: FontWeight.bold)),
                                  TextSpan(text: ' ?',style: TextStyle(color:Colors.black)),
                                ],
                              ),                             
                              ),
                              SizedBox(height: 30.0,),
                              Text("Developer Student Clubs (DSC) is a Google Developers program for university students to learn mobile and web  development skills.",
                              style: TextStyle(fontSize:18.0,letterSpacing: 0.0)),
                          ],
                        )),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('images/newscreen2.png'),width: 350.0,height: 300.0,),
                            SizedBox(height: 0.0,),
                            RichText(
                              text: TextSpan(
                                text: "What is ",
                                style: TextStyle(color: Colors.black,fontSize: 36.0,fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(text: 'G',style: TextStyle(color:Color(0xff4285F4),fontWeight: FontWeight.bold)),
                                  TextSpan(text: 's',style: TextStyle(color:Color(0xffEA4335),fontWeight: FontWeight.bold)),
                                  TextSpan(text: 'o',style: TextStyle(color:Color(0xffFBBC04),fontWeight: FontWeight.bold)),
                                  TextSpan(text: 'c',style: TextStyle(color:Color(0xffF3EB654),fontWeight: FontWeight.bold)),
                                  TextSpan(text: ' ?',style: TextStyle(color:Colors.black)),
                                ],
                              ),                             
                              ),
                              SizedBox(height: 30.0,),
                              Text("Google Summer of Code is a global program focused on bringing more student developers into open source software development.",
                              style: TextStyle(fontSize:18.0,letterSpacing: 0.0)),
                          ],
                        )),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('images/screen3.png'),width: 350.0,height: 200.0,
                            ),
                            SizedBox(height: 0.0,),
                            Text("Let’s Start The Journey",style:TextStyle(color: Colors.black,fontSize: 34.0,fontWeight: FontWeight.bold)),   
                          ],
                        )),
                    ),
                  ],
                ),
              ),
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _pageIndicator(),
          ),
          _currentpage != _totalpage-1 ? Container(
            child: Padding(
              padding: const EdgeInsets.only(top:25.0),
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: GestureDetector(
                  onTap: (){
                    _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0,right:20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Next",
                        style:TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Color(0xff4285F4))),
                        SizedBox(width:2.0),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ) : Text(""),
              ],
            ),
          ),
          
        ),
      ),
      bottomSheet: _currentpage == _totalpage-1 ? Container(
        height: 80.0,
        width: double.infinity,
        color:Color(0xff4285F4),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MainForm();
            }));
          },
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top:5.0,bottom:6.0),
              child: Text("Get Started",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32.0
              ),),
            ),
          ),
        ),
      ) : Text(""),
    );
  }
}