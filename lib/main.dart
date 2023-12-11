import 'package:flutter/material.dart';
import 'package:flutter_application_2/dashboard_screen.dart';
import 'package:flutter_application_2/src/app.dart';

import 'src/oficial_store.dart';
import 'src/planetas.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
        "/temp" : (context) =>  oficialstore(),
        "/dash" :(context) => const DashboardScreen(),
        "/int" :(context) => planetas(),
       //"/movie" :(context) => PopularScreen()
      },
      title: 'Zakurazaka46',
      debugShowCheckedModeBanner: false,
      home: name(),
    );
  }
}