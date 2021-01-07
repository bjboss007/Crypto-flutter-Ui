import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({
    Key key,
    this.color,
    this.walletName,
    this.accountBalance,
  }) : super(key: key);

  final Color color;
  final String walletName;
  final String accountBalance;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * .8,
        height: size.height * .19,
        margin: EdgeInsets.only(left: 20, top: 30, bottom: 20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: <Widget>[
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Balance \n\n\n",
                      ),
                      TextSpan(
                          text: "NGN $accountBalance \n",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white)),
                      TextSpan(
                        text: walletName,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      print("I got clicked");
                    },
                    child: Icon(
                      Icons.visibility_off,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ]),
            ))
          ],
        ));
  }
}
