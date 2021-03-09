import 'package:flutter/material.dart';
import 'package:jokenpo/ui/joken.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: JokenPage(),
    );
  }
}
