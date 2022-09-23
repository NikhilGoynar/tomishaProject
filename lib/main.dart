import 'package:flutter/material.dart';
import 'package:tomisha_flutter_task/responsive_layout.dart';
import 'package:tomisha_flutter_task/web_page.dart';
import 'mobile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ResponsiveLayout(
          mobileScreenLayout: HomePageWidget(),
          webScreenLayout: WebScreen(),
        ));
  }
}
