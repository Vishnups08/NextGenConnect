import 'package:flutter/material.dart';

class AdminStudentsPage extends StatelessWidget {
  const AdminStudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search students',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          // Filters (All, Active, Inactive)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFilterChip('All', true), // Assuming 'All' is initially selected
                _buildFilterChip('Active', false),
                _buildFilterChip('Inactive', false),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          // Student List
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Placeholder count
              itemBuilder: (context, index) {
                return _buildStudentListItem(
                  'Ethan Harper', // Placeholder name
                  'University of Technology', // Placeholder university
                  'assets/images/profile.png', // Placeholder image
                ); // Placeholder data
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, bool isSelected) {
    return Chip(
      label: Text(label),
      backgroundColor: isSelected ? Colors.blue[100] : Colors.grey[200],
      labelStyle: TextStyle(color: isSelected ? Colors.blue[900] : Colors.black87),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }

  Widget _buildStudentListItem(String name, String university, String imageUrl) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
      ),
      title: Text(name),
      subtitle: Text(university),
      trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
      onTap: () {
        // TODO: Navigate to student detail page
      },
    );
  }
} 