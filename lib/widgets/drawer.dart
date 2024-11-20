import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
// import 'package:flutter/widgets.dart';
=======
import 'package:flutter/widgets.dart';
>>>>>>> be205332dca16c61a8b312faad8649aa8b3b9144

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    // final imgUrl =
    "https://www.google.com/imgres?q=profile&imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fsystem%2Fresources%2Fpreviews%2F005%2F544%2F718%2Fnon_2x%2Fprofile-icon-design-free-vector.jpg&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fprofile-icon&docid=RBpRIqik_jZCqM&tbnid=_5mhIFxchtSFMM&vet=12ahUKEwjlyaaynqaIAxUNd2wGHU1MOt8QM3oECBkQAA..i&w=980&h=980&hcb=2&ved=2ahUKEwjlyaaynqaIAxUNd2wGHU1MOt8QM3oECBkQAA";
=======
    final imgUrl =
        "https://www.google.com/imgres?q=profile&imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fsystem%2Fresources%2Fpreviews%2F005%2F544%2F718%2Fnon_2x%2Fprofile-icon-design-free-vector.jpg&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fprofile-icon&docid=RBpRIqik_jZCqM&tbnid=_5mhIFxchtSFMM&vet=12ahUKEwjlyaaynqaIAxUNd2wGHU1MOt8QM3oECBkQAA..i&w=980&h=980&hcb=2&ved=2ahUKEwjlyaaynqaIAxUNd2wGHU1MOt8QM3oECBkQAA";
>>>>>>> be205332dca16c61a8b312faad8649aa8b3b9144
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text('Haider',
                    style: TextStyle(
                      color: Colors.black,
                    )),
                accountEmail: Text('haidelimdi@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                    )),
                margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('assets/images/img.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                'Home',
                textScaler: TextScaler.linear(1.0),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
