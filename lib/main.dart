import 'package:flutter/material.dart';
import 'package:ui/btn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title, debugShowCheckedModeBanner: false, home: btn());
  }
}
