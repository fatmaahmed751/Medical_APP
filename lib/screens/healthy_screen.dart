import 'package:flutter/material.dart';
import 'package:medical_app/components/componenets.dart';
import 'package:medical_app/screens/ask_us_screen.dart';
import 'package:medical_app/screens/emergency_screen.dart';

class HealthyScreen extends StatelessWidget {
  const HealthyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffEEF1FF),
      appBar: AppBar(
        backgroundColor:Color(0xffEEF1FF),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Image(
              image: AssetImage('assets/images/arrow.png'),
            )),
        elevation: 0.0,
      ),
      body:Column(
          children: [
          appText(text: 'التشخيص'
      ),
            SizedBox(height: 30,),
            const Center(child: Image(image: AssetImage('assets/images/doctor.png'),)),
            SizedBox(height: 40,),
            defaultButton(text: 'التشخيص سليم تماما',
              function:(){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const AskUs()));
              },
              color: Color(0xffD2DAFF), textColor:Color(0xff6C4AB6) ,
            ),
            defaultButton(text: 'هل لديك اسئلة اخرى',
              function:(){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const AskUs()));
              },
              color: Color(0xffD2DAFF), textColor:Color(0xff6C4AB6) ,
            ),
            defaultButton(text: 'الطوارئ',
              function:(){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const EmergencyScreen()));
              },
              color: Color(0xffD2DAFF), textColor:Color(0xff6C4AB6) ,
            ),
          ],
      ),
    );
  }
}
