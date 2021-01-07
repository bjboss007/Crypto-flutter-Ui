import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreetingWithImage extends StatelessWidget {
  const GreetingWithImage({
    Key key, this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();
    var hour = dateTime.hour;
    var greeting = "";
    if (hour <= 11) {
      greeting = "Good Morning. ";
    } else if (hour > 11 && hour <= 16) {
      greeting = "Good Afternoon, ";
    } else if (hour > 16) {
      greeting = "Good Evening, ";
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Text("$greeting $name", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),),
    
          Spacer(),
          // Image.asset("")
          Icon(
            Icons.account_circle,
            color: Colors.black54,
            size: 40,
          ),
        ],
      ),
    );
  }
}
