import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction(
      {Key key, this.name, this.date, this.amount, this.credit = true})
      : super(key: key);

  final String name, date;
  final bool credit;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 20),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: credit
                    ? Colors.green[50].withOpacity(.8)
                    : Colors.red[50].withOpacity(.8),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              credit ? Icons.arrow_downward : Icons.arrow_upward,
              color: credit ? Colors.green : Colors.red,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "$name \n",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "$date", style: TextStyle(color: Colors.black38)),
                ],
              ),
            ),
          ),
          Spacer(),
          Text(
            credit ? "+\NGN$amount" : "-\NGN$amount"  ,
            style: TextStyle(
                color: credit ? Colors.green : Colors.red , fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
