
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var dateTime = DateTime.now();
    var hour = dateTime.hour;
    var greeting = "";
    if (hour <= 11) {
      greeting = "Good Morning";
    }else if (hour > 11 && hour <= 16) {
      greeting = "Good Afternoon";
    } else if(hour > 16) {
      greeting = "Good Evening";
    }
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   title: Row(
      //     children: [
      //       Text("$greeting", style: TextStyle(fontWeight: FontWeight.w400),),
      //     ],
      //   ),
      //   actions: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: Icon(Icons.account_circle, color: Colors.black54,),
      //     ),
      //   ],
      // ),
      body: Body(),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home_outlined), iconSize: 30, onPressed: (){},),
            IconButton(icon: Icon(Icons.wallet_membership), iconSize: 30, onPressed: (){},),
            IconButton(icon: Icon(Icons.people_outline), iconSize: 30, onPressed: (){},),
            IconButton(icon: Icon(Icons.menu), iconSize: 30, onPressed: (){},)
          ],
        ),
      ),
    );
  }
}