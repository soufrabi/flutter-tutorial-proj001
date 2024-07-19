import 'package:flutter/material.dart';
import 'package:proj01/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}

class _MainState extends State<MainPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mr. Clean",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      backgroundColor: const Color(0xFFF0F0F0),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Booking",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Acccount",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: "More",
          ),
        ],
      ),
      body: getBodyWidget(),
    );
  }

  getBodyWidget() {
    return (_currentIndex == 0)
        ? HomePage()
        : const Text("This page has not been implemented yet");
  }
}
