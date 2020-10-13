import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_register_sub_app/helper.dart';
import 'package:login_register_sub_app/welcome.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: HexColor('#D7F5FA'),
        automaticallyImplyLeading: true,
        toolbarHeight: 70.0,
        centerTitle: true,
        leading: Image.asset('images/logo.png'),
        title: Text('Gloomy Chat', style: TextStyle(color: Colors.deepPurple, fontSize: 26.0),),
        actions: <Widget> [
          Icon(
            FontAwesomeIcons.adjust,
            color: Colors.black87,
          ),
        ],
      ),
      body: Center(
        //padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset('images/c-1.png'),
            TextField(
              textAlign: TextAlign.center,
              decoration: TextFieldDecoration.copyWith(hintText: " Enter your User name"),
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
            RoundedButton(title: "Register", colour: HexColor('#E4854A'),),
            RoundedButton(title: "Back to home", colour: HexColor('#5B297C'),
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
