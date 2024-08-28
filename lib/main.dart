import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main(){

runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch:Colors.amber,
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
        ),
        routes: {
          "/": (context) => LoginPage(),
          "/home":(context) => HomePage(),
          "/login":(context) => LoginPage()
        }
    );
   
  }
}