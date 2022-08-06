import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:bilal/utilis/theme.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          "NOTES".text.xl3.color(context.accentColor).bold.make(),
          Container(
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.trash,
                  size: 24,
                  color: (context.accentColor),
                ),
                SizedBox(width: 10),
                Icon(
                  CupertinoIcons.add,
                  size: 28,
                  color: (context.accentColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
