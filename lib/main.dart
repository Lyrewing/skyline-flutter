import 'package:flutter/material.dart';
import 'pages/layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: LayoutPage(), //MyHomePage(title: 'Flutter'),
    );
  }
}
