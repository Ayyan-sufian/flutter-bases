import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bases/intro_page.dart';
import 'package:flutter_bases/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "Login";
  @override
  void initState() {
    super.initState();
    wheretogo();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          child: Image.asset('assets/images/calculator.png'),
        ),
      ),
    );
  }

  void wheretogo() async {

    var sharedPref = await SharedPreferences.getInstance();
    var isLoggin = sharedPref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 2),(){
      if (isLoggin!=null){
        if(isLoggin){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage(this),));
        }
        else{
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => IntroPage(),));
        }
      }
      else{
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => IntroPage(),));
      }

    });
  }
}