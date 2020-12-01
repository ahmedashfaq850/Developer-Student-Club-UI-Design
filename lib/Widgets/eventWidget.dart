import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';


Widget eventLink(Color color, String event, String date, Color btnColor, Color btnText, String text){
  return TimelineTile(
    alignment: TimelineAlign.start,
    indicatorStyle: IndicatorStyle(
      color: color,
      width: 20,
      indicatorXY: 0,
      drawGap: true,
    ),
    endChild: Container(
      width: double.infinity,
      height: 80,
      //color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.only(bottom:8.0,left: 12.0, right: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(event,style: TextStyle(fontSize: 19.0
                    ,fontWeight: FontWeight.w700 ),),
                    SizedBox(height: 5),
                    Text(date,style: TextStyle(color: Color(0xff8D8A8A),fontSize: 16.0,fontWeight: FontWeight.w500))
                  ],
                ),
                 Container(
                  width: 140,
                  height: 35,
                  decoration: BoxDecoration(
                    color: btnColor,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(text,style: TextStyle(color: btnText,fontWeight: FontWeight.bold),),
                  ),
                  ), 
              ],
            )
          ],
          ),
      ),
    ),
  );
}