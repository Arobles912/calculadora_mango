import 'package:calculator_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen()
      
    );
  }

}
