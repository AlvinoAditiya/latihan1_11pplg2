import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/image/profile.jpeg"),
            ),
            SizedBox(height: 20),
            Text("Alvino Aditiya", style: TextStyle(fontSize: 22)),
            Text("XI PPLG 2", style: TextStyle(fontSize: 18)),
            Text("Email: alvinoaditiya25@gmail.com"),
          ],
        ),
      ),
    );
  }
}