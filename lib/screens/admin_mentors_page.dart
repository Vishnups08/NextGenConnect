import 'package:flutter/material.dart';

class AdminMentorsPage extends StatelessWidget {
  const AdminMentorsPage({super.key});

  // Sample data for mentors
  final List<Map<String, String>> mentors = const [
    {'name': 'John Doe', 'field': 'Technology', 'status': 'Active'},
    {'name': 'Jane Smith', 'field': 'Business', 'status': 'Inactive'},
    {'name': 'Peter Jones', 'field': 'Design', 'status': 'Active'},
    {'name': 'Mary Brown', 'field': 'Education', 'status': 'Active'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentors'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Search Box
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search mentors',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          // Mentors List
          Expanded(
            child: ListView.builder(
              itemCount: mentors.length,
              itemBuilder: (context, index) {
                final mentor = mentors[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(mentor['name']![0]), // Display first letter of name
                    ),
                    title: Text(mentor['name']!),
                    subtitle: Text('${mentor['field']} - ${mentor['status']}'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // TODO: Implement navigation to mentor detail page
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}