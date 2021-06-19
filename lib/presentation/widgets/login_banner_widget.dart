import 'package:flutter/material.dart';

class LoginBannerWidget extends StatelessWidget {
  const LoginBannerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/green_headphone.jpg"),
            fit: BoxFit.fill),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: Colors.blue,
      ),
      width: double.infinity,
      // child: Text("For Slider Images"),
    );
  }
}
