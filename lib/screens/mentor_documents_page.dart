import 'package:flutter/material.dart';

class MentorDocumentsPage extends StatelessWidget {
  const MentorDocumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documents'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Uploaded Certificates',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Placeholder count
                itemBuilder: (context, index) {
                  return _buildDocumentListItem(
                    'Data Science Certification', // Placeholder title
                    'Verified', // Placeholder status
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDocumentListItem(String title, String status) {
    return ListTile(
      leading: Icon(Icons.description, size: 40, color: Colors.blueGrey[400]), // Document icon
      title: Text(title),
      subtitle: Text(status),
      onTap: () {
        // TODO: Implement logic to view/download document
      },
    );
  }
} 