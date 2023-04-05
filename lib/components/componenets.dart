import 'package:flutter/material.dart';

Widget defaultFormField({
  required String hitText,
  required TextEditingController controller,
  required TextInputType type,
  String? Function(String?)? validator,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        validator: validator,
        keyboardType: type,
        controller: controller,
        decoration: InputDecoration(
          hintText: hitText,
          contentPadding: EdgeInsets.only(left: 25),
          hintStyle: TextStyle(
              decorationStyle: TextDecorationStyle.double,
              color: Color(0xff241332)),
        ),
      ),
    );
Widget defaultButton({
  required String text,
  required Function function,
  required Color color,
}) =>
    Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(8.0),
      width: 327,
      height: 56,
      decoration: BoxDecoration(
        color: color,
        // const Color.fromRGBO(252,96 ,17 ,80 ) ,
        borderRadius: BorderRadius.circular(100.0),
      ),
      clipBehavior: Clip.hardEdge,
      child: TextButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
        ),
      ),
    );

Widget infoButton(
        {required String text,
        required Function function,
        required Color color}) =>
    Container(
      width: 374,
      height: 130,
      decoration: BoxDecoration(color: color,
          borderRadius: BorderRadius.only(
       bottomLeft: Radius.circular(30),
     )
      ),

      child: TextButton(
        style: ButtonStyle(

            //backgroundColor: Color.fromRGBO(141, 158, 255)

            ),
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
