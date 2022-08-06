// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bilal/widgets/headerBar.dart';
import 'package:bilal/widgets/noteCard.dart';
import 'package:bilal/widgets/searchBar.dart';
import 'package:bilal/widgets/toggleBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:bilal/utilis/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyTheme.canvasColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              children: [
                HeaderBar(),
                ToggleBar().pOnly(top: 32),
                SearchBar(),
                Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        return NoteCard();
                      })),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
