import 'package:flutter/material.dart';

class TitleDescriptionWidget extends StatelessWidget {
  const TitleDescriptionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "PlayPoll",
          style: TextStyle(
              fontFamily: "FasterOne",
              fontSize: 50,
              color: Colors.blueAccent[200]),
        ),
        Text(
          "Poll for songs & win prizes",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              decorationThickness: 40,
              fontSize: 24,
              color: Colors.blueGrey[600]),
        ),
      ],
    );
  }
}
