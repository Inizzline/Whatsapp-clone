import 'package:flutter/material.dart';

ThemeData basicTheme (){
  TextTheme _basicTextTheme(TextTheme base){
    return base.copyWith();
}
  final ThemeData base = ThemeData.light();
    return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      accentColor: Color(0xFF128C7E),
      appBarTheme: AppBarTheme(color: Color(0xFF075E54),
    ),
  );
}