import 'package:flutter/material.dart';

class TabNavigation extends StatelessWidget {
  const TabNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('tab Navigation'),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.home), text: "home"),
            Tab(icon: Icon(Icons.settings), text: "settings"),
            Tab(icon: Icon(Icons.person), text: "person"),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text('Home Tab')),
          Center(child: Text('Settings Tab')),
          Center(child: Text('Profile Tab')),
        ]),
      ),
    );
  }
}
