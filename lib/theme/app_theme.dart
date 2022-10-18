import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.green;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    primaryColor: Colors.amber,

    //Appbar Theme
    appBarTheme: AppBarTheme(
      color: Colors.pink[600],
      elevation: 10
    ),

    scaffoldBackgroundColor: Colors.black

  );

}