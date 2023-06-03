import 'package:flutter/material.dart';
import 'package:monetum/routes/analytics.dart';
import 'package:monetum/routes/home.dart';
import 'package:monetum/routes/spreadsheet.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: HomeWidget(),
      ),
      theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: const TextTheme(
            displayMedium: TextStyle(color: Colors.white),
            bodySmall: TextStyle(
              color: Color.fromARGB(255, 255, 187, 187),
            ),
          )),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _selected = 0;
  var pages = [
    const HomePage(),
    const Analytics(),
    const Spreadsheet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: pages[_selected]),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 114, 49, 92),
                Color.fromARGB(255, 255, 187, 187),
              ],
              begin: Alignment(0, 1),
              end: Alignment(0, -8),
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 1,
            selectedItemColor: const Color.fromARGB(255, 223, 223, 223),
            unselectedItemColor: const Color.fromARGB(255, 245, 179, 223),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.analytics),
                label: 'Analytics',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.table_bar),
                label: 'Spreadsheet',
              ),
            ],
            currentIndex: _selected,
            onTap: (value) {
              setState(() {
                _selected = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
