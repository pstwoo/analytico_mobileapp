import 'package:flutter/material.dart';

TextStyle headingStyle = TextStyle(
    fontSize: 30,
    shadows: [
      Shadow(
        offset: Offset(0.0, 2.0),
        blurRadius: 3.0,
      )
    ],
    fontWeight: FontWeight.w700,
    color: Color(0XFFf4f2dc));
TextStyle contentStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Color(0XFFf4f2dc),
    fontFamily: 'sfpro');
LinearGradient gradientStyle = LinearGradient(
    colors: [Color(0XFFf4f2dc), Color(0XFFf4f2dc)],
    stops: [0, 1],
    begin: Alignment.topCenter);
