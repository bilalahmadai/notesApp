import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:bilal/utilis/theme.dart';

class ToggleBar extends StatelessWidget {
  const ToggleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
          color: context.backgroundColor,
          borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: TabBar(
            indicator: BoxDecoration(
                color: context.theme.buttonColor,
                borderRadius: BorderRadius.circular(4)),
            tabs: [
              Tab(child: "Complete".text.medium.make()),
              Tab(child: "Favourite".text.medium.make()),
            ]),
      ),
    );
  }
}
