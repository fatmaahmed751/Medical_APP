import 'package:flutter/material.dart';
import 'package:medical_app/components/componenets.dart';

class AskUs extends StatelessWidget {
  const AskUs({Key? key}) : super(key: key);

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
        Center(child: appText(text: 'الاسئلة')),

      ]
      ),
    );
  }
}
