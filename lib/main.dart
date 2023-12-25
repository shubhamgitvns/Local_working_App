import 'package:flutter/material.dart';
import 'Option_Page.dart';
import 'Welcome_Page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    initialRoute: '/',
    routes: {
      '/': (context) =>  MyApp(),
       //'/Option_Page': (context) => Option_Page(),
      // '/SliderPage': (context) =>  EnlargeStrategyDemo (),
      // '/MenuePage': (context) => MenuePage(),
    },
  ));
}

