import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/screens/home/home.dart';
import 'package:siga_app/screens/login/Login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: LightColor, // navigation bar color
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarColor: Color(0x33B5B5B5),
  ));

  runApp(LoginClass());
}

class LoginClass extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Login()
    );
  }
}

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Home()
    );
  }

}
