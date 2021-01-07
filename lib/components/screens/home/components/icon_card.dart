import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.icon,
    this.caption,
  }) : super(key: key);

  final IconData icon;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        onTap: () {
          
        },
        child: Container(
          height: 62,
          width: 62,
          padding: EdgeInsets.all(10),
          // margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Color(0xffE0F2F1).withOpacity(.3),
              borderRadius: BorderRadius.circular(5)),
          child: Icon(
            icon,
            color: Color(0xff1E88E5).withOpacity(.8),
            size: 28,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        caption,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ]
        //   child: Icon(
        //     icon,
        //     color: Color(0xff1E88E5),
        //     size: 28,

        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 20),
        //   child: Text(
        //     caption,
        //     style: TextStyle(fontSize: 15),

        //   ),
        );
  }
}
