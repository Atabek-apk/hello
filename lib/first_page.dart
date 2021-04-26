import 'package:flutter/material.dart';

void main() => runApp(Start());

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: LoginPage(),
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.green,
          accentColor: Colors.red),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = true;
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    final txtUserName = TextField(
      cursorColor: Colors.white,
      controller: usernameController,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person,
          color: Colors.white,
        ),
        hintText: 'Ulanyjy',
        contentPadding: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 25.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );

    final txtPassword = TextField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock, color: Colors.white),
        hintText: 'Password',
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
          child: Icon(_showPassword ? Icons.visibility : Icons.visibility_off,
              color: Colors.white),
        ),
        contentPadding: EdgeInsets.fromLTRB(60.0, 20.0, 20.0, 25.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );

    final btnLogin = TextButton(
      child: Text(
        'T A S S Y K L A',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        if (usernameController != null &&
            usernameController.text == "a" &&
            passwordController != null &&
            passwordController.text == "a") {
          Navigator.popAndPushNamed(context, '/second');
        }
      },
    );

    return Scaffold(
      backgroundColor: Colors.indigo[300],
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 55, right: 55),
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Text(
                "L O G I N",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50.0, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            txtUserName,
            SizedBox(
              height: 8.0,
            ),
            txtPassword,
            SizedBox(
              height: 40.0,
            ),
            btnLogin,
          ],
        ),
      ),
    );
  }
}
