import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:login_register_sub_app/helper.dart';
import 'package:login_register_sub_app/registration.dart';
import 'package:login_register_sub_app/login.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Row(
              children: [
                Container(
                  height: 70.0,
                  child: Image.asset('images/logo.png'),
                ),
                Text('Gloomy Chat', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w700,),),
              ],

            ),
            Container(
              child: Image.asset('images/c-2.jpg'),
            ),
            SizedBox(height: 25.0,),
            RoundedButton(title: "Register", colour: HexColor('#E4854A'),
              onPressed: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
            RoundedButton(title: "Login", colour: HexColor('#5B297C'),
              onPressed: (){
                Navigator.pushNamed(context,LoginScreen.id);
              },
            ),
          ],
      ),
      ),
    );
  }
}
