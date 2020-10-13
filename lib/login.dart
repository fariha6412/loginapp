import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:login_register_sub_app/helper.dart';
import 'package:login_register_sub_app/welcome.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20.0),
          children: <Widget> [
            Container(
              height: 130,
              child: Image.asset('images/logo.png'),
            ),
            SizedBox(height: 10.0,),
            TextField(
              textAlign: TextAlign.center,
              decoration: TextFieldDecoration.copyWith(hintText: " Enter your Email"),
            ),
            SizedBox(height: 10.0,),
            TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your password")
            ),

            SizedBox(height: 20.0,),
            RoundedButton(
              title: "Login",
              colour: HexColor('#E4854A'),
            ),
            RoundedButton(
              title: "Back to home",
              colour: HexColor('#5B297C'),
              onPressed: (){
                Navigator.pushNamed(context,WelcomeScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
