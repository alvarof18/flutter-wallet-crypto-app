import 'package:flutter/material.dart';
import 'package:robot_wallet_app/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: RegisterScreen(),
    );
  }
}
