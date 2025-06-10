import 'package:flutter/material.dart';
import 'mentor_home_page.dart';
import 'mentor_students_page.dart';
import 'mentor_documents_page.dart';
import 'mentor_resources_page.dart';
import 'mentor_reports_page.dart';

class MentorDashboardPage extends StatefulWidget {
  const MentorDashboardPage({super.key});

  @override
  State<MentorDashboardPage> createState() => _MentorDashboardPageState();
}

class _MentorDashboardPageState extends State<MentorDashboardPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const MentorHomePage(),
    const MentorStudentsPage(),
    const MentorDocumentsPage(),
    const MentorResourcesPage(),
    const MentorReportsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people), // Assuming people icon for Students
            label: 'Students',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description), // Assuming description icon for Document
            label: 'Document',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.book), // Assuming book icon for Resources
            label: 'Resources',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart), // Assuming bar_chart icon for Reports
            label: 'Reports',
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

Widget buildStatCard(String value, String label) {
  return Container(
    width: 100,
    height: 80,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
          ),
        ),
      ],
    ),
  );
}

Widget buildSkillChip(String skill) {
  return Chip(
    label: Text(skill),
    backgroundColor: Colors.grey[200],
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  );
} 