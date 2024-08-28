import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final int day = 32;
    return  Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("First-App",
          ),
        )
      ),
        body: Center(
          child: Container(
            child: Text('hello $day world'),
          ),
        ),
        drawer: 
         Drawer(),
        
       
      );
  }
}