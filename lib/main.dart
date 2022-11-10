import 'package:flutter/material.dart';
import 'package:signup/home.dart';
import 'package:signup/signup.dart';
import 'package:signup/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/signup',
    routes: {
      '/login': (context)=>login(),
      '/signup': (context) => SignUp(),
      '/home':(context) => HOME(),
    },
  ));
}