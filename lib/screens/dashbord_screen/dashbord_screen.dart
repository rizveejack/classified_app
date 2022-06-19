import 'package:flutter/material.dart';

class DashBordScreen extends StatelessWidget {
  const DashBordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: Drawer(
        width: 200,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("header"),
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(
                Icons.person_rounded,
              ),
            ),
          ],
        ),
      ),
      body: Text("Dashbord"),
    );
  }
}
