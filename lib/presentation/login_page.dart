import 'package:flutter/material.dart';
import 'package:play_poll/presentation/widgets/google_login_widget.dart';

import 'package:play_poll/presentation/widgets/register_login_widget.dart';
import 'package:play_poll/presentation/widgets/title_description_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/green_headphone.jpg"),
                    fit: BoxFit.fill),
              ),
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Colors.white.withOpacity(1),
                      Colors.indigo[100].withOpacity(0.6),
                      Colors.blue[100].withOpacity(0.5),
                      Colors.blueAccent[100].withOpacity(0.2),
                    ],
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                height: MediaQuery.of(context).size.height / 2.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TitleDescriptionWidget(),
                    RegisterLoginWidget(),
                    GoogleLoginWidget()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Image.asset("assets/images/green_headphone.jpg"),

// Row(
//   children: [
//     Icon(
//       Icons.slideshow_outlined,
//     ),
//     Icon(
//       Icons.poll_outlined,
//     ),
//   ],
// ),
