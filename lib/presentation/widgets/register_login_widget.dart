import 'package:flutter/material.dart';
import 'package:play_poll/presentation/email_login_page.dart';
import 'package:play_poll/presentation/email_register_page.dart';

class RegisterLoginWidget extends StatelessWidget {
  const RegisterLoginWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        children: [
          Expanded(child: RegisterButtonWidget()),
          SizedBox(width: 20),
          Expanded(child: LoginButtonWidget()),
        ],
      ),
    );
  }
}

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(width: 2, color: Colors.blueGrey[600]),
        ),
        onPressed: () {
          print("Login with Email pressed");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return EmailLoginPage();
            }),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Login',
            style: TextStyle(color: Colors.blueGrey[600], fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey[600],
          onPrimary: Colors.white,
          shape: StadiumBorder(),
        ),
        onPressed: () {
          print("Register with Email pressed");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return EmailRegisterPage();
            }),
          );
        },
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Register",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
