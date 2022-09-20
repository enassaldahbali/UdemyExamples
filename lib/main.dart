
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled11/deskTop.dart';
import 'package:untitled11/mobile.dart';

import 'login/login.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
       theme: ThemeData(primarySwatch: Colors.teal),

      home: Builder(builder:( BuildContext ) {
        assert(BuildContext != null);
        String os=Platform.operatingSystem;
        print(os);
         print(MediaQuery.of(context).size.width<=560);
        if(MediaQuery.of(context).size.width<=560)
             return MediaQuery(
                 data: MediaQuery.of(context).copyWith(
                   textScaleFactor: 0.7,
                 ),
                 child: MobileScreen());

        return  MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.25,
            ),
            child: DeskTopScreen());
              },


      ),);
      // home: LayoutBuilder(builder: (BuildContext , BoxConstraints ) {
      //   print(BoxConstraints.minWidth.toInt());
      //   if(BoxConstraints.minWidth.toInt()<=560)
      //        return MobileScreen();
      //
      //   return const DeskTopScreen();
      //         },
    //child: DeskTopScreen())

  }
}

