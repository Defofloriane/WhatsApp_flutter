import 'package:flutter/material.dart';
import 'package:whassapp1/color.dart';
import 'package:whassapp1/responsive/responsive_layout.dart';
import 'package:whassapp1/screens/mobile_screen_layout.dart';
import 'package:whassapp1/screens/web_screen_layout.dart';
import 'rout.dart' as rout;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute:rout.generateRoute,
      title: 'Whatsap first ',
      theme: ThemeData.dark().copyWith(
        backgroundColor: backgroundColor
      ),
     home:const  ResponsiveLayout(
       moblieScreensLayout: MobileScreenLayout(),
        webScreensLayout: WebScreenLayout()),
    
    );
  }
}

