import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget moblieScreensLayout;
  final Widget webScreensLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.moblieScreensLayout,
      required this.webScreensLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > 900) {
        //web screen
        return webScreensLayout;
      }
      else{
             //mobile screen
           return moblieScreensLayout;
      }
     
    });
  }
}
