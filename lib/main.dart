import 'package:flutter/material.dart';
import 'Login_Page.dart';
import 'Option_Page.dart';
import 'Welcome_Page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    initialRoute: '/',
    routes: {
      '/': (context) =>  MyApp(),

    },
  ));
}

