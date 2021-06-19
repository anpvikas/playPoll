import 'package:flutter/material.dart';

BoxShadow boxTopShadow = BoxShadow(
  color: Colors.grey.shade200,
  blurRadius: 1.0, // soften the shadow
  spreadRadius: 1.0, //extend the shadow
  offset: Offset(
    -1.0, // Move to right 10  horizontally
    -1.0, // Move to bottom 10 Vertically
  ),
);

BoxShadow boxBotomShadow = BoxShadow(
  color: Colors.grey.shade400,
  blurRadius: 1.0, // soften the shadow
  spreadRadius: 1.0, //extend the shadow
  offset: Offset(
    1.0, // Move to right 10  horizontally
    1.0, // Move to bottom 10 Vertically
  ),
);

Gradient mLinearGradient = LinearGradient(
  // Where the linear gradient begins and ends
  begin: Alignment.topLeft,
  end: Alignment.bottomLeft,
  // Add one stop for each color. Stops should increase from 0 to 1
  stops: [0.1, 0.5, 0.7, 0.9],
  colors: [
    // Colors are easy thanks to Flutter's Colors class.
    Colors.white,
    Colors.indigo[200],
    Colors.blue[100],
    Colors.blueAccent[100],
  ],
);

Color mBackgroundColor = Color(0xFFFFFFFF);

Color mPrimaryColor = Color(0xFFB98068);

Color mPrimaryTextColor = Color(0xFF8C746A);

Color mSecondaryTextColor = Color(0xFFB98068);

Color mSecondaryColor = Color(0xFFC28E79);

Color mFacebookColor = Color(0xFF4277BC);

Color mTitleTextColor = Color(0xFF2D140D);

List<String> coffeeNames = [
  'Espresso',
  'Cappuccino',
  'Macciato',
  'Mocha',
  'Latte',
];
