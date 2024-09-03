import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  // const SignInPage({super.key});
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.1,
        title: const Text("Title"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            'assets/images/img3.jpg',
            height: 900,
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Ink(
                color: Colors.red,
                height: 50,
                width: 100,
              ),
              const Text('Hello'),
            ],
          )
        ]),
      ),
    );
  }
}
