import 'package:flutter/material.dart';
import 'package:helperhome/pages/login.dart';

import '../pages/register.dart';

Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => const Login(),
  '/register': (BuildContext context) => const Register(),
  //'/episodes':(BuildContext context) => const EpisodesPage(),
  //'/locations':(BuildContext context) => const LocationsPage(),
};
