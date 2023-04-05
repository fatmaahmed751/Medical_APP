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
        body: SingleChildScrollView(
          child: Column(
            children: [
           const Center(child: Text('اهلا بكم',
           style: TextStyle(
             color: Color(0xff8D72E1),
             fontWeight: FontWeight.bold,
             fontSize: 40
           ),),),
              const Center(
                  child: Image(image:AssetImage('assets/images/logo.png'))),
              const SizedBox(
                height: 40,
              ),
              Container(
                width:327 ,
                height: 52,
                decoration:  BoxDecoration(
                  color: Color(0xff8D72E1),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginScreen()
                    ));
                  }, child: const Center(child: Text('تسجيل دخول',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 25
                  ),)), ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width:327 ,
                height: 52,
                decoration:  BoxDecoration(
                    color: Color(0xff8D72E1),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const RegisterScreen(
                  )));
                }, child: const Center(child: Text('انشاء حساب جديد',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    fontFamily: 'Poppins'
                  ),)), ),
              ),


            ],

          ),
        ),

      ),
    );
  }
}

