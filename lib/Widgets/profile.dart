import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


Widget teamProfile(String avatarUrl, String post, Color color, String name){
  return SingleChildScrollView(
      child: Column(
      children:[Stack(
        children: [
          Container(
            //padding: EdgeInsets.all(20),
            width: 120,
            height: 120,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(avatarUrl),
              
              ),
          ),
          Positioned(
            bottom: 12,
            right: 0,
            child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
              border: Border.all(color:Colors.white,width:3),
            ),  
          )),
        ],
      ),
      SizedBox(height:10),
      Text(name,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black)),
      SizedBox(height:5),
      Text(post,style: TextStyle(fontSize: 20.0,color: Colors.black)),
      SizedBox(height:5),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon(MdiIcons.facebook,color: Colors.blue,),
            iconSize: 25,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(MdiIcons.linkedin,color: Color(0xff0E76A8),),
            iconSize: 25,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(MdiIcons.github,color: Colors.black),
            iconSize: 25,
          ),
        ],
        ),
        SizedBox(height:5),
        Container(
          width: 160,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff4285F4),
          ),
          child: FlatButton(
            onPressed: (){},
            child: Text("View Profile",style: TextStyle(fontWeight: FontWeight.bold
            ,fontSize: 17.0,color: Colors.white),),
          ),
        ),
      ], 
    ),
  );
}