import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text(
                'Hello!',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
