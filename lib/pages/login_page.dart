import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


class PassingData {
  final String data;
  const PassingData(this.data);
}
class LoginPage extends StatefulWidget {
  // const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Italy, Rome",
                  style: TextStyle(
                    fontFamily: GoogleFonts.aboreto().fontFamily,
                    fontWeight: FontWeight.w800,
                    fontSize: 36,
                  )),
              const SizedBox(
                height: 10.0, //space between 2 componenets
              ),
              Image.asset(
                "assets/images/img.jpg",
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                        hintText: "Enter User Name",
                      ),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, '/home',arguments: name);
                       
                      },
                      child: AnimatedContainer(
                        child: changeButton
                            ? Icon(Icons.done_all_outlined)
                            : Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        duration: Duration(seconds: 1),
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   child: Text(
                    //     'Login',
                    //     style: TextStyle(
                    //         fontSize: 20, fontWeight: FontWeight.bold),
                    //   ),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(160, 50),
                    //   ),
                    //   onPressed: () => Navigator.pushNamed(context, '/home'),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
