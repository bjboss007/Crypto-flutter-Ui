import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWithBtn extends StatelessWidget {
  const TextWithBtn({
    Key key,
    this.text,
    this.press,
    this.withBtn = true
  }) : super(key: key);

  final String text;
  final Function press;
  final bool withBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: <Widget>[
            Text(
              text.toUpperCase(),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Spacer(),
            if(withBtn)
              // FlatButton(
                // child: Text("show more"),
                GestureDetector(onTap: press, child: Text("show more")),
                // onPressed: press,
              // )
          ],
        ));
  }
}
