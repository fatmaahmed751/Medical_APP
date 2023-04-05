import 'package:flutter/material.dart';
import 'package:medical_app/components/componenets.dart';
import 'package:medical_app/screens/healthy_screen.dart';

class DiagnosisXRAY extends StatelessWidget {
  const DiagnosisXRAY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
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
            secondText(
                text:
                '\n:لتحصل علي افضل نسبة تشخيص لاشعة الصدر من فضلك',
                color: Colors.black,
                textAlign: TextAlign.right
            ),
            secondText(
              text:
                 '  تصوير الاشاعة في اضائة كافية \n'
                 ' تصويرها بشكل افقي مستوى\n '
                 'PNG رفع الصورة بصيغة',
              color: Color(0xff8D72E1),
                textAlign: TextAlign.right
            ),

            const Center(child: Image(image: AssetImage('assets/images/doctor.png'),)),
            const SizedBox(height: 40,),
            defaultButton(text: 'ارفع الصورة من هنا',
              function:(){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const HealthyScreen()));
              },
              color: Color(0xff8D72E1),textColor:Colors.white
            ),
          ],
        ),
      ),
    );
  }
}
