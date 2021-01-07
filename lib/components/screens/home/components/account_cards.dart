import 'package:CryptoApp/components/screens/home/components/account_card.dart';
import 'package:flutter/material.dart';

class AccountCards extends StatelessWidget {
  const AccountCards({
    Key key,
  
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AccountCard(accountBalance: "4,000",walletName: "Crypto Wallet",color: Colors.blue[900],),
          AccountCard(accountBalance: "8,000",walletName: "Bryto Wallet",color: Colors.green[900]),
        ],
      ),
    );
  }
}
