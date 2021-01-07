import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_card.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      // child: Wrap(
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   spacing: 30,children
      //   : [
      //     IconCard(icon: Icons.add, caption: "Add Walet",),
      //     IconCard(icon: Icons.send_sharp, caption: "Send Money",),
      //     IconCard(icon: Icons.print_sharp, caption: "Withdraw",),
      //     IconCard(icon: Icons.money, caption: "Receive",),
      //   ],
      // ),
     return  Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // spacing: 30,
          children: [
            IconCard(icon: Icons.add, caption: "Add Walet",),
            IconCard(icon: Icons.send_sharp, caption: "Send Money",),
            IconCard(icon: Icons.print_sharp, caption: "Withdraw",),
            IconCard(icon: Icons.money, caption: "Receive",),
          ],
        // ),
    ),
     );
  }
}

