import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const Material(
      child:Center(
        child: Text("Login Page",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500
      ),
      // textScaleFactor: 1.5,
    ),
  ),
  );
  }
}