import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';
import 'package:medical_app/app_localization.dart';
import 'package:medical_app/screens/on_boarding_screen.dart';
import 'package:medical_app/screens/spalsh_screen.dart';

import 'screens/diagnosis_x_ray_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(/*
      localizationsDelegates: [
        AppLocalizations.delegate,![](../../../Downloads/doctor.png)
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        LocalJsonLocalization.delegate,
      ],
      localeResolutionCallback: (deviceLocale,supportedLocales){
        for(var Locale in supportedLocales){
          if(deviceLocale!=null&&deviceLocale.languageCode==Locale.languageCode){
            return deviceLocale;
        }

        }
        return supportedLocales.first;![](../../../Downloads/doctor.png)
      },
      supportedLocales: [
        Locale("ar",""),
        Locale('en',"")
      ],*/
      debugShowCheckedModeBanner: false,
       home: SplashScreen(),
    );
  }
}


