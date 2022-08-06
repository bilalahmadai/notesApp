import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:bilal/utilis/theme.dart';

class NoteCardBtn extends StatelessWidget {
  const NoteCardBtn({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 30,
          // width: 80,
          child: Icon(
            icon,
            color: context.accentColor,
          ),
          decoration: BoxDecoration(
              color: context.theme.buttonColor,
              borderRadius: BorderRadius.circular(2)),
        ),
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: 150,
      decoration: BoxDecoration(
          color: context.cardColor, borderRadius: BorderRadius.circular(6)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NoteCardBtn(
                    icon: CupertinoIcons.check_mark_circled,
                  ),
                  NoteCardBtn(
                    icon: CupertinoIcons.bookmark,
                  ),
                  NoteCardBtn(
                    icon: CupertinoIcons.trash,
                  )
                ],
              ),
            ),
            Padding(
              padding: Vx.mOnly(left: 8, right: 8),
              child: InkWell(
                onTap: () {
                  
                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Heading".text.xl2.bold.color(context.accentColor).make(),
                      "Sadipscing amet eirmod no amet dolore, labore rebum dolor lorem."
                          .text
                          .medium
                          .color(context.accentColor)
                          .make()
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: "31 July 2022"
                  .text
                  .medium
                  .color(context.primaryColor)
                  .make()
                  .pOnly(right: 8, bottom: 8),
            )
          ]),
    ).py16();
  }
}
