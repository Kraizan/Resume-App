import 'package:flutter/material.dart';
import 'skills.dart';
import 'details.dart';
import 'projects_list.dart';

void main() {
  runApp(
    const MaterialApp(
      home: CurrentPage(),
    ),
  );
}

class CurrentPage extends StatefulWidget {
  const CurrentPage({Key? key}) : super(key: key);

  @override
  _CurrentPageState createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _children = [
    DetailsPage(),
    SkillsPage(),
    ProjectList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _children,
        onPageChanged: (page) {
          setState(() {
            currentIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.psychology),
              label: 'Skills'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.code),
              label: 'Projects'
          ),
        ],

        currentIndex: currentIndex,
        onTap: _onTappedBar
      ),
    );
  }

  void _onTappedBar(int index) {
    setState(() {
      currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }
}



