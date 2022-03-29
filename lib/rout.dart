import 'package:flutter/material.dart';
import 'package:whassapp1/screens/mobile_chat.dart';



Route<dynamic> generateRoute(RouteSettings setting) {
  final Map<String, dynamic> args = new Map<String, dynamic>();

  switch (setting.name) {
    case '/mobile_chat':
      return MaterialPageRoute(builder: (context) =>MobileChat());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(),
              ));
  }
}
