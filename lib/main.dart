import 'package:flutter/material.dart';
import 'package:flutters_components/src/pages/hom_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componenetes APP',
      home: HomePage(),
    );
  }
}