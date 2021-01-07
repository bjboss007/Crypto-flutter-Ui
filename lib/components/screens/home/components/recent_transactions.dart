import 'package:CryptoApp/components/screens/home/components/text_with_btn.dart';
import 'package:flutter/cupertino.dart';

import '../../../data.dart';
import 'transaction.dart';

class TransactionsArea extends StatelessWidget {
  const TransactionsArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int index;
    return Container(
      height: size.height * 0.5,
      decoration: BoxDecoration(
        color: Color(0xffE0F5F2).withOpacity(.2),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextWithBtn(
            text: "Recent Transactions",
            withBtn: false,
          ),
          Expanded(
            child: SizedBox(
              height: size.height * 0.45,
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 20, top: 20),
                scrollDirection: Axis.vertical,
                itemCount: data.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Transaction(
                    name: data[index]["name"],
                    amount: data[index]["amount"],
                    date: data[index]["date"],
                    credit: data[index]["credit"],
                  );
                },
                
              ),
            ),
          )
        ],
      ),
    );
  }
}
