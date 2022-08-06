import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        // brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: Color(0xff000000),
        buttonColor: Color(0xff212124),
        accentColor: Color(0xffffffff),
        cardColor: Color(0xff2a2b2e),
        primaryColor: Color(0xff818181),
        backgroundColor: Color(0xff161618),

        // appBarTheme: AppBarTheme(
        //   color: Colors.white,
        //   elevation: 0.0,
        //   iconTheme: IconThemeData(color: MyTheme.lightSilver),
        //   toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        //   titleTextStyle: Theme.of(context).textTheme.headline6,
        // ),
      );

  static Color canvasColor = Color(0xff000000);
  static Color buttonColor = Color(0xff212124);
  static Color accentColor = Color(0xffffffff);
  static Color cardColor = Color(0xff2a2b2e);
  static Color primaryColor = Color(0xff818181);
  static Color backgroundColor = Color(0xff161618);
}
