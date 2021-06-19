import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:play_poll/presentation/home_page.dart';

class EmailRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              child: SizedBox(
                width: 150,
                height: 150,
                child: SvgPicture.asset("assets/images/music_note1.svg"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
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
                ),

                shape: BoxShape.rectangle,
                color: Colors.green,
                // backgroundBlendMode: BlendMode.darken,
                borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(50),
                  topRight: Radius.circular(750),
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 20),
              WelcomeMessageWidget(),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      EmailFieldWidget(),
                      PasswordFieldWidget(),
                      // SizedBox(height: 10),
                      // ForgotPasswordWidget(),
                      SizedBox(height: 50),
                      LoginWithEmailButtonWidget(),
                      // SizedBox(height: 10),
                      // NewUserRegisterWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NewUserRegisterWidget extends StatelessWidget {
  const NewUserRegisterWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "New user? ",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.blueGrey),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              "Register here",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blueGrey),
            ),
          )
        ],
      ),
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
      "Registration",
      style: TextStyle(
          // fontFamily: "FasterOne",
          fontWeight: FontWeight.w500,
          // fontSize: 26,
          color: Colors.blueGrey),
    );
  }
}

class WelcomeMessageWidget extends StatelessWidget {
  const WelcomeMessageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Text(
            "Register here!",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 38,
                color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}

class LoginWithEmailButtonWidget extends StatelessWidget {
  const LoginWithEmailButtonWidget({
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
              'Register with email',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
      onPressed: () {
        print("Login with Email pressed");
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

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        "Forgot password?",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blueGrey),
      ),
    );
  }
}

class PasswordFieldWidget extends StatelessWidget {
  const PasswordFieldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        labelText: "Password",
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

class EmailFieldWidget extends StatelessWidget {
  const EmailFieldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        labelText: "Email",
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
