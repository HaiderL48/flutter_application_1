import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/signin_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
          fontFamily: GoogleFonts.gothicA1().fontFamily,
        ),
        darkTheme: ThemeData(brightness: Brightness.dark),
        routes: {
          "/": (context) => HomePage(),
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
          "/signin": (context) => SignInPage(),
        });
  }
}
