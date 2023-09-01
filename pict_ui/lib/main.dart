import 'package:flutter/material.dart';
import 'package:pict_ui/pages/activity.dart';
import 'package:pict_ui/pages/description_list.dart';
import 'package:pict_ui/pages/description_quiz.dart';

void main() {
  runApp(const PictApp());
}

class PictApp extends StatelessWidget {
  const PictApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: PictScaffold(),
    );
  }
}

class PictScaffold extends StatefulWidget {
  const PictScaffold({super.key});

  @override
  State<PictScaffold> createState() =>
      PictScaffoldState();
}

class PictScaffoldState extends State<PictScaffold> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    DescriptionListPage(),
    DescriptionQuizPage(),
    ActivityPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _Title(index: _selectedIndex),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'quiz'),
          BottomNavigationBarItem(icon: Icon(Icons.local_activity), label: 'activity'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final int index;

  const _Title({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return const Text('Home');
    } else if (index == 1) {
      return const Text('Quiz');
    } else if (index == 2) {
      return const Text('Activity');
    }
    return const Text('');
  }

}