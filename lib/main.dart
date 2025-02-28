// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/login.dart';
import 'provider/providers.dart';

void main() {
  runApp( ChangeNotifierProvider(
      create: (context) => LessonProvider(),
      child:MaterialApp(
    debugShowCheckedModeBanner: false,
    
    home: Login(),
  )));
}