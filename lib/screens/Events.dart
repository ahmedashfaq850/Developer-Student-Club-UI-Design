import 'package:app/Widgets/eventWidget.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dscEvents(),
    )
  );
}

class dscEvents extends StatefulWidget {
  @override
  _dscEventsState createState() => _dscEventsState();
}

class _dscEventsState extends State<dscEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Color(0xff4285F4),
        title: Text("DSC Upcoming Events",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24.0),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:50.0,left: 20,right: 20,bottom: 20,),
          child: Column(
            children: [
              eventLink(Color(0xff4285F4),"Android Development","10/5/2020",Color(0xffC6EACC),Color(0xff3EB654),"Registered Now"),
              eventLink(Color(0xffEA4335),"Kotlin Baisc","17/5/2020",Color(0xffEA4335),Color(0xffFFFFFF),"Expired"),
              eventLink(Color(0xffFBBC04),"Flutter Zero to Hero","15/5/2020",Colors.black,Colors.white,"Coming Soon"),
              eventLink(Color(0xff3EB654),"Machine Learning","12/5/2020",Color(0xffC6EACC),Color(0xff3EB654),"Registered Now"),
              eventLink(Color(0xff4285F4),"Android Development","10/5/2020",Color(0xffC6EACC),Color(0xff3EB654),"Registered Now"),
              eventLink(Color(0xffEA4335),"Kotlin Baisc","17/5/2020",Color(0xffEA4335),Color(0xffFFFFFF),"Expired"),
              eventLink(Color(0xffFBBC04),"Flutter Zero to Hero","15/5/2020",Colors.black,Colors.white,"Coming Soon"),
              eventLink(Color(0xff3EB654),"Machine Learning","12/5/2020",Color(0xffC6EACC),Color(0xff3EB654),"Registered Now"),
              eventLink(Color(0xff4285F4),"Android Development","10/5/2020",Color(0xffC6EACC),Color(0xff3EB654),"Registered Now"),
              eventLink(Color(0xffEA4335),"Kotlin Baisc","17/5/2020",Color(0xffEA4335),Color(0xffFFFFFF),"Expired"),
              eventLink(Color(0xffFBBC04),"Flutter Zero to Hero","15/5/2020",Colors.black,Colors.white,"Coming Soon"),
              eventLink(Color(0xff3EB654),"Machine Learning","12/5/2020",Color(0xffC6EACC),Color(0xff3EB654),"Registered Now"),
              
            ],
          ),
        ),
      ),
    );
  }
}
