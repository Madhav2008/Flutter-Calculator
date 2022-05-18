import 'package:calculator/Calculation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter basic calculator',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Calculation(),
      ),
    );
  }
}
