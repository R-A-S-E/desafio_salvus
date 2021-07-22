import 'package:flutter/material.dart';

import 'src/home/home_page.dart';
import 'src/register/register_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.white),
    initialRoute: "/Home",
    routes: {
      "/Home": (context) => HomePage(),
      "/Register": (context) => RegisterPage(),
    },
  ));
}
