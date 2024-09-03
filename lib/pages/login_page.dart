import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/utils/routes.dart';
// import 'package:google_fonts/google_fonts.dart';

class PassingData {
  final String data;
  const PassingData(this.data);
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  // const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homePage);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 100.0,
                ),
                Image.asset(
                  "assets/images/img2.jpg",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 80.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 1.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username cannot be Empty';
                          } else {
                            return null;
                          }
                        },
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
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password cannot be Empty';
                          } else if (value.length < 8) {
                            return 'Password should contain 8 characters';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade300,
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            alignment: Alignment.center,
                            height: 50,
                            width: 150,
                            decoration: const BoxDecoration(),
                            child: changeButton
                                ? const Icon(Icons.done_all_outlined)
                                : const Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
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
      ),
    );
  }
}
