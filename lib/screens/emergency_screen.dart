import 'package:flutter/material.dart';
import 'package:medical_app/components/componenets.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEEF1FF),
    appBar: AppBar(
    backgroundColor: Color(0xffEEF1FF),
    leading: IconButton(
    onPressed: () {
    Navigator.pop(context);
    },
    icon: const Image(
    image: AssetImage('assets/images/arrow.png'),
    )),
    elevation: 0.0,
    ),
    body: Column(
    children: [
    Center(child: appText(text: 'الطوارئ')),
      SizedBox(height: 10,),
      Container(
        width: 212,
          height: 102,
          child: secondText(color:Colors.black , text: 'بعد 5 ثواني يتم الاتصال بالرقم الاتي لينقذك', textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
          fontSize: 20)),
      CircleAvatar(
        radius: 120,
        backgroundImage: AssetImage('assets/images/em.jpg'),
          //fit: BoxFit.fill,
           ),
      SizedBox(height: 60,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone_in_talk_sharp,
            size: 26,
            color: Colors.black,),
            SizedBox(width: 19,),
            Text('0123457684',
            style: TextStyle(
              fontSize: 26,
              color: Colors.black,
              fontWeight: FontWeight.w400
            ),),

          ],
        ),
      ),
      SizedBox(height: 40,),
      Text('أنت في أيدى أمينة',
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
            fontFamily: 'Poppins',
            color: Color(0xff8D72E1)
        ),
      )

    ]
    ),
    );
  }
}
