import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'screens.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final _screens = <Widget>[
    HomeScreen(),
    Container(
      child: Center(
        child: Text("index1"),
      ),
    ),
    Container(
      child: Center(
        child: Text("index2"),
      ),
    ),
    Container(
      child: Center(
        child: Text("index3"),
      ),
    ),
  ];

  int _currentIndex = 0;
  void _onTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar:
          CustomBottomNavBar(currentIndex: _currentIndex, onTab: _onTab),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _screens[_currentIndex],
    );
  }
}
