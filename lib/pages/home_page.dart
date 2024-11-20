import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/employee_services.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
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
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        title: const Text("Title"),
        actions: [
          IconButton(
              onPressed: () => {EmployeeServices().getData()},
              icon: Icon(Icons.refresh_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ]),
      ),
      drawer: MyDrawer(),
    );
  }
}
