import 'package:flutter/material.dart';
import 'admin_home_page.dart'; // Import the actual AdminHomePage
import 'admin_students_page.dart'; // Import AdminStudentsPage
import 'admin_mentors_page.dart'; // Import AdminMentorsPage
import 'admin_analytics_page.dart'; // Import AdminAnalyticsPage
import 'admin_profile_page.dart'; // Import AdminProfilePage
// TODO: Create and import other admin screens for bottom navigation

class AdminDashboardPage extends StatefulWidget {
  const AdminDashboardPage({super.key});

  @override
  State<AdminDashboardPage> createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    // TODO: Replace with actual admin screens
    const AdminHomePage(), // Use the actual AdminHomePage
    const AdminStudentsPage(), // Use the actual AdminStudentsPage
    const AdminMentorsPage(), // Use the actual AdminMentorsPage (placeholder)
    const AdminAnalyticsPage(), // Use the actual AdminAnalyticsPage
    const AdminProfilePage(), // Use the actual AdminProfilePage
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Use fixed type for more than 3 items
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people), // Assuming people icon for Student
            label: 'Student',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Assuming person icon for Mentor
            label: 'Mentor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics), // Assuming analytics icon
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), // Assuming profile icon
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Customize selected item color
        unselectedItemColor: Colors.grey, // Customize unselected item color
        onTap: _onItemTapped,
      ),
    );
  }
} 