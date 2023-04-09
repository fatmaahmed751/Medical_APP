import 'package:flutter/material.dart';
import 'package:medical_app/components/componenets.dart';
import 'package:medical_app/screens/ask_us_screen.dart';
import 'package:medical_app/screens/diagnosis_x_ray_screen.dart';
import 'package:medical_app/screens/emergency_screen.dart';

class DiagnosisScreen extends StatelessWidget {
  const DiagnosisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor:const Color(0xffEEF1FF),
        appBar: AppBar(
          backgroundColor:const Color(0xffEEF1FF),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Image(
                image: AssetImage('assets/images/arrow.png'),
              )),
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                    child: Image(image:AssetImage('assets/images/phth.png'))),
                SizedBox(height: 5,),

                infoButton(text: 'التشخيص', function:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const DiagnosisXRAY()));
                },
                color: const Color(0xff8D9EFF)),
                SizedBox(height: 15,),
                infoButton(text: 'الاسئلة', function:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AskUs()));
                },
                    color: const Color(0xff8D72E1)),
                SizedBox(height: 15,),
                infoButton(text: 'الطوارئ', function:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const EmergencyScreen()));
                },
                    color: const Color(0xff6C4AB6)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
