import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_app/screens/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
void initState(){
  super.initState();
  Timer(Duration(seconds: 3),
          () {
    Navigator.push(context, MaterialPageRoute(builder:(context)=>OnBoardingScreen()));
          });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Container(
            width: 300,
            height: 300,
            child: Image(image: AssetImage('assets/images/co.png'),
            height: 170,
            //width:170,
            fit: BoxFit.cover,),
          ),),
          Text('صحتك معنا بخير',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              fontFamily: 'Poppins',
              color: Color(0xff8D72E1)
            ),
          )
        ],
      ),
    );
  }
}
