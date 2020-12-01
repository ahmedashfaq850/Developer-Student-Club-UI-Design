import 'package:flutter/material.dart';
Widget listTile(String listTitle, IconData icons){
  var checkinput = false;
  return ListTile(
    contentPadding: EdgeInsets.only(bottom:10,right:10),
    leading: Icon(
      icons,
      color: Colors.black,
      size: 35.0,
    ),
    title: Text(listTitle,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
    trailing: Checkbox(
      value: checkinput,
      onChanged: (bool value){
              },
            ),
            
          );
        }
        
        
