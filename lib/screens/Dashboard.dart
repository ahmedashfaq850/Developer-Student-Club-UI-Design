import 'package:app/Widgets/dashboardcontainer.dart';
import 'package:app/screens/DscTeam.dart';
import 'package:app/screens/Events.dart';
import 'package:app/screens/setting.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dashboard(),
    )
  );
}

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text("Dashboard",style: TextStyle(color: Color(0xff4285F4),fontWeight: FontWeight.bold,fontSize: 24.0)),
      ),
      body:Container(
          margin: EdgeInsets.all(30),
          width: double.infinity,
          height: double.infinity,
          
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:80.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconContainer("Inbox", Icons.inbox, Color(0xff4285F4),(){}),
                    iconContainer("DSC Team", Icons.people, Color(0xffEA4335),(){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return dscteam();
                      }));
                    }),
                  ],
                ),
                SizedBox(height:40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconContainer("Events", Icons.event, Color(0xffFBBC04),(){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return dscEvents();
                      }));
                    }),
                    iconContainer("Notification", Icons.notification_important, Color(0xff3EB654),(){}),
                  ],
                ),
                SizedBox(height:40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconContainer("Setting", Icons.settings, Color(0xff4285F4),(){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return setting();
                      }));
                    }),
                    iconContainer("Support", Icons.support_agent, Color(0xffEA4335),(){}),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}