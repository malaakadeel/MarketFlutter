import 'package:flutter/material.dart';
import 'package:store/StoreScreen.dart';
import 'package:store/bakeryScreen.dart';
import 'package:store/cakeScreen.dart';
import 'package:store/mealsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CakeScreen() ,
    );
  }
}
