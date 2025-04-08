import 'package:flutter/material.dart';

class HomeWithDrawer extends StatelessWidget {
  const HomeWithDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('drawer navigation')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('menu', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('settings'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Settings clicked')),
                );
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome To Drawer App'),
      ),
    );
  }
}
