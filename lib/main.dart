import 'package:flutter/material.dart';

import 'src/home/home_page.dart';

void main() {
  runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white)));
}
