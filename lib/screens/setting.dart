import 'package:app/Widgets/settingListTile.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: setting(),
    )
  );
}


class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Color(0xff4285F4),
        title: Text("Setting",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24.0),),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        width:double.infinity,
        height: 500,
        child: ListView(
          children: [
            listTile("Notifications", Icons.notifications),
            Container(
              width: 300,
              height: 1,
              color: Colors.grey[100]
            ),
            listTile("Dark Theme", Icons.cloud),
            Container(
              width: 300,
              height: 1,
              color: Colors.grey[100]
            ),
            listTile("Set Reminder", Icons.calendar_today),
            Container(
              width: 300,
              height: 1,
              color: Colors.grey[100]
            ),
            listTile("Edit Profile", Icons.edit),
            Container(
              width: 300,
              height: 1,
              color: Colors.grey[100]
            ),
            listTile("Logout", Icons.logout),
            Container(
              width: 300,
              height: 1,
              color: Colors.grey[100]
            )
          ],
        ),
      ),
    );
  }
}