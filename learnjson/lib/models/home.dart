import 'package:flutter/material.dart';
import 'package:learnjson/models/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const HomeScreen(), Home()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bottom Navigation'),
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box), // Replace with appropriate icons
            label: 'Page 2', // Replace with appropriate labels
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), // Replace with appropriate icons
            label: 'Page 3', // Replace with appropriate labels
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications), // Replace with appropriate icons
            label: 'Page 4', // Replace with appropriate labels
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // Replace with appropriate icons
            label: 'Page 5', // Replace with appropriate labels
          ),
        ],
        currentIndex: _selectedIndex, // Set the currently selected item
        selectedItemColor: Colors.blue, // Set the color of the selected item
        onTap: _onItemTapped, // Handle item taps
      ),
    );
  }
}
