import 'package:flutter/material.dart';


Widget iconContainer(String title, IconData icon, Color color, Function myfunction){
  return Container(
    width: 120,
    height: 120,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
        boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
            ),
          ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(onPressed: myfunction,
        icon: Icon(icon,color: color,),
        iconSize: 50,
        ),
        SizedBox(height:20.0),
        Text(title,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0)),
      ],
    ),
  );
}