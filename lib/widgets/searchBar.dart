import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:bilal/utilis/theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Vx.mV16,
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 38,
            decoration: BoxDecoration(
                color: context.backgroundColor,
                borderRadius: BorderRadius.circular(4)),
            child: TextField(
              style: TextStyle(color: context.primaryColor),
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    CupertinoIcons.search,
                    color: context.primaryColor,
                  ).pOnly(top: 4),
                  border: InputBorder.none,
                  hintText: "Search inside notes",
                  hintStyle: TextStyle(
                    color: context.primaryColor,
                  )),
            ).pOnly(left: 8, right: 8,),
          ))
        ],
      ),
    );
  }
}
