import 'package:flutter/material.dart';
import 'package:play_poll/presentation/home_page.dart';

class CreateEventPage extends StatefulWidget {
  // const CreateEventPage({ Key? key }) : super(key: key);

  @override
  _CreateEventPageState createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  bool isSwitchedOn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeData.fallback().canvasColor,
          elevation: 0,
          title: AppBarWidget(),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blueGrey,
              // size: 31.0,
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      buildEventTypeText(isSwitchedOn),
                      // IconButton(
                      //   onPressed: () {
                      //     setState(
                      //       () {
                      //         if (isSwitchedOn) {
                      //           Icon(Icons.public);
                      //         } else
                      //           (Icon(Icons.public));
                      //       },
                      //     );
                      //   },
                      // )
                      // Switch(
                      //   value: isSwitchedOn,
                      //   onChanged: (value) {
                      //     setState(() {
                      //       isSwitchedOn = value;
                      //       print(isSwitchedOn);
                      //     });
                      //   },
                      // ),
                    ],
                  ),
                  EventNameFieldWidget(),
                  LocationFieldWidget(),
                  SizedBox(height: 50),
                  CreateButtonWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Text buildEventTypeText(isSwitchedOn) {
    if (isSwitchedOn == true) {
      return Text('Public');
    } else {
      return Text('Private');
    }
  }
}

class EventNameFieldWidget extends StatelessWidget {
  const EventNameFieldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        labelText: "Event Name",
        labelStyle: TextStyle(color: Colors.blueGrey),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
      ),
    );
  }
}

class LocationFieldWidget extends StatelessWidget {
  const LocationFieldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        labelText: "Location",
        labelStyle: TextStyle(color: Colors.blueGrey),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
      ),
    );
  }
}

class CreateButtonWidget extends StatelessWidget {
  const CreateButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey, // background
        onPrimary: Colors.white, // foreground
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: Text(
              'Create Event',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
      onPressed: () {
        print("Create Event button pressed");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return HomePage();
          }),
        );
      },
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Create Event",
      style: TextStyle(
          // fontFamily: "FasterOne",
          fontWeight: FontWeight.w500,
          // fontSize: 30,
          color: Colors.blueGrey),
    );
  }
}
