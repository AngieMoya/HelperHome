import 'package:flutter/material.dart';
import 'package:helperhome/routes/routes.dart';
import 'package:helperhome/theme/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Helper Home',
      theme: ThemeData(
        primarySwatch: MyMaterialColor.myColor,
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}
