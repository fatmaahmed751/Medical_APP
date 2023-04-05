import 'package:flutter/material.dart';
import 'package:medical_app/components/componenets.dart';
import 'package:medical_app/screens/diagnosis_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController phoneController=TextEditingController();
    TextEditingController addressController=TextEditingController();
    TextEditingController numDoctorController=TextEditingController();
    TextEditingController numPersonController=TextEditingController();
    TextEditingController ageController=TextEditingController();
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          elevation: 0.0,
        backgroundColor: const Color(0xffFFFFFF),
    leading: IconButton(
    onPressed: () {
    Navigator.pop(context);
    },
    icon:const Image(image: AssetImage('assets/images/arrow.png'),)
        ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 160,
              height: 35,
              child: const Center(child: Text('انشاء حساب جديد',
                style: TextStyle(
                  color: Color(0xff5B63B0),
                  fontWeight:FontWeight.bold,
                  fontSize: 26,
                ),),
              ),
            ) ,
            const Center(child: Image(image: AssetImage('assets/images/reg.png'),)),
            Container(
              width: 327,
              height: 560,
              decoration: BoxDecoration(
                border: Border.all(width:1,color: const Color(0xff8D72E1)),
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFFFFFF),
                boxShadow: const [
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

                  defaultFormField(
                      hitText: 'السن',
                      controller:ageController ,
                      type:TextInputType.text ),
                  defaultFormField(
                      hitText: 'رقم الموبايل',
                      controller:phoneController ,
                      type:TextInputType.text ),
                  defaultFormField(
                      hitText: 'العنوان',
                      controller:addressController ,
                      type:TextInputType.text ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      hitText: 'رقم الدكتور المتابع',
                      controller:numDoctorController ,
                      type:TextInputType.text ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      hitText: 'رقم شخص من القرابة الاولى',
                      controller:numPersonController ,
                      type:TextInputType.text ),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text('النوع',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        fontFamily: "Poppins",
                        color: Color(0xff241332),

                      ),),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        const Align(
                          alignment: Alignment.topRight,
                          child: Text('أنثى',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              fontFamily: "Poppins",
                              color: Color(0xff241332),

                            ),),
                        ),

                        IconButton(
                           onPressed: () {}, icon:const Icon(Icons.circle_outlined,size: 15,)),
                        const SizedBox(
                          width: 50,
                        ),
                        const Align(
                          alignment: Alignment.topRight,
                          child: Text('ذكر',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              fontFamily: "Poppins",
                              color: Color(0xff241332),

                            ),),
                        ),
                        IconButton(
                          style: const ButtonStyle(
                           alignment: Alignment.topRight,
                          ),
                            onPressed: () {}, icon:const Icon(Icons.circle_outlined,size: 15,)),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 3,),
            defaultButton(text: 'الاستمرار',
                function:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const DiagnosisScreen()));
                },
              color: Color(0xff8D72E1), textColor:Colors.white,
            ),
          ],
        ),
      ),

      ),
    );
  }
}
