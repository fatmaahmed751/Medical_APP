import 'package:flutter/material.dart';
import 'package:medical_app/app_localization.dart';
import 'package:medical_app/components/componenets.dart';
import 'package:medical_app/screens/diagnosis_screen.dart';
import 'package:medical_app/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();

    return SafeArea(
      top: false,
    child: Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
    appBar:AppBar(

      backgroundColor: const Color(0xffFFFFFF),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon:const Image(image: AssetImage('assets/images/arrow.png'),)

    ),
    elevation: 0.0,
    ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
              Container(
               // width: 160,
                //height: 35,
                child: Center(child: Text('تسجيل الدخول',
                style: TextStyle(
                  color: Color(0xff5B63B0),
                  fontWeight:FontWeight.bold,
                  fontSize: 26,
                ),),
            ),
              ) ,
            Center(
                child: Image(image:AssetImage('assets/images/login.png'))),
        Container(
          width: 327,
          height: 271,
          decoration: BoxDecoration(
            border: Border.all(width:1,color: Color(0xff8D72E1)),
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(108,74,182,0.55),
              blurRadius: 20.0,
            ),
          ],
          ),
          child: Column(
            children: [
              defaultFormField(
                  hitText:'الاسم',
                  controller:nameController ,
                  type:TextInputType.text ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      hitText: 'الايميل',
                      controller:emailController ,
                      type:TextInputType.text ),
              SizedBox(
                height: 20,
              ),
                  defaultFormField(
                      hitText: 'كلمة السر',
                      controller:passwordController ,
                      type:TextInputType.visiblePassword ),
            ],
          ),
        ),
            SizedBox(height: 3,),
            defaultButton(text: 'الاستمرار',
              function:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const DiagnosisScreen()));
              },
              color: Color(0xff8D72E1), textColor:Colors.white ,
            ),

    ],
        ),
      ),
      ),

    );

  }
}
