import 'package:flutter/material.dart';
import 'package:helperhome/pages/login.dart';
import 'package:helperhome/pages/profile.dart';
import '../pages/my_home_page.dart';
import '../pages/register.dart';

Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => const Login(),
  '/register': (BuildContext context) => const Register(),
  '/home': (BuildContext context) => const MyHomePage(
        title: 'home',
      ),
  '/profile': (BuildContext context) => const Profile(),
  //'/locations':(BuildContext context) => const LocationsPage(),
};
