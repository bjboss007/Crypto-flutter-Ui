import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account_cards.dart';
import 'greeting_with_name.dart';
import 'quick_action.dart';
import 'recent_transactions.dart';
import 'text_with_btn.dart';
import 'transaction.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          GreetingWithImage(
            name: "Habib",
          ),
          AccountCards(),
          SizedBox(
            height: 10,
          ),
          TextWithBtn(text: "Quick Links", press: () {}),
          SizedBox(
            height: 20,
          ),
          QuickActions(),
          SizedBox(
            height: 30,
          ),
          TransactionsArea(),
        ],
      ),
    );
  }
}

