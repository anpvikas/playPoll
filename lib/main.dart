import 'package:flutter/material.dart';

import 'package:play_poll/presentation/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PlayPoll',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage0(),
      // home: HomePage(),
      home: LoginPage(),
    );
  }
}
