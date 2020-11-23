import 'package:flutter/material.dart';
import 'package:app/screens/splashscreen.dart';



void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Google DSC",
      theme: ThemeData(
        backgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splashscreen(),
    )
  );
}



