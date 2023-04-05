import 'package:flutter/material.dart';
import 'package:medical_app/screens/login_screen.dart';
import 'package:medical_app/screens/register_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: const Color(0xffE1EBFF),
        appBar: AppBar(
          backgroundColor: const Color(0xffE1EBFF),
          elevation: 0.0,
        ),
        body: Column(
          children: [
         const Center(child: Text('اهلا بكم',
         style: TextStyle(
           color: Color(0xff5B63B0),
           fontWeight: FontWeight.bold,
           fontSize: 40
         ),),),
            const Center(
                child: Image(image:AssetImage('assets/images/logo.png'))),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginScreen()
                ));
              }, child: const Center(child: Text('تسجيل دخول',
              style: TextStyle(
                  color: Color(0xff5B63B0),
                  fontWeight: FontWeight.w400,
                  fontSize: 25
              ),)), ),
            const SizedBox(
              height: 10,
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const RegisterScreen(
              )));
            }, child: const Center(child: Text('انشاء حساب جديد',
              style: TextStyle(
                  color: Color(0xff5B63B0),
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                fontFamily: 'Poppins'
              ),)), ),


          ],

        ),

      ),
    );
  }
}

