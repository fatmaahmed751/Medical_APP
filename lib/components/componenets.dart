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
  required Color textColor,
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
              color: textColor, fontSize: 17, fontWeight: FontWeight.w400),
        ),
      ),
    );

Widget infoButton(
        {required String text,
        required Function function,
        required Color color}) =>

    Container(
      width: 374,
      height: 110,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(color: color,
          borderRadius: BorderRadius.only(
       bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
     )
      ),

      child: TextButton(
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

Widget appText({
  required String text,
})=>Container(
  width:228 ,
  height:60,
  decoration: BoxDecoration(
      border: Border.all(
        width:1,color:Color(0xff5B63B0),
      ),
borderRadius: BorderRadius.circular(27)
  ),

  child: TextButton(onPressed:(){},
    child: Text(
      text,
      style: TextStyle(
        color: Color(0xff5B63B0),
        fontWeight:FontWeight.bold,
        fontSize: 26,
      ),),
    ),

);

Widget secondText({
  required String text,
  required Color color,
 required TextAlign textAlign,
  FontWeight? fontWeight,
  double? fontSize,
})=>Container(
  width:314 ,
  child: Text(text,
  textAlign:textAlign ,
  style: TextStyle(
    color: color,
fontWeight: fontWeight,
    fontSize: fontSize,
  ),),
);
