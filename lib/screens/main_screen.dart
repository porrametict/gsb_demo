// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeScreenIndex = 0;
  List<Widget> screens = [];
  void changeActiveScreen(int index) {
    setState(() {
      activeScreenIndex = index;
    });
  }

  @override
  void initState() {
    screens = [
      Page1(),
      Page2(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(activeScreenIndex),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: 'Business'),
        BottomNavigationBarItem(icon: Icon(Icons.lightbulb), label: 'Business'),
      ], currentIndex: activeScreenIndex, onTap: changeActiveScreen),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 1")),
      body: Container(
          child: Column(
        children: [
          const Text("Page 1 "),
          TextButton(
            onPressed: () {},
            child: Text("got ot page"),
          )
        ],
      )),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 2")),
      body: Container(
          child: Column(
        children: [
          const Text("Page 2 "),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page2_1()),
              );
            },
            child: Text("got ot page"),
          )
        ],
      )),
    );
  }
}

class Page2_1 extends StatelessWidget {
  const Page2_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 2 1")),
      body: Container(
          child: Column(
        children: [
          const Text("Page 2 1"),
          TextButton(
            onPressed: () {},
            child: Text("got ot page"),
          )
        ],
      )),
    );
  }
}
