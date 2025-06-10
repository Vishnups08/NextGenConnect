import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Overview',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _buildOverviewCard('Total Students', '1,250'),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildOverviewCard('Active Mentors', '75'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
               Row(
                children: [
                   Expanded(
                    child: _buildOverviewCard('Completed Sessions', '500'),
                  ),
                   Expanded(child: Container()), // Empty container to balance the row if needed
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Recent Activity',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // TODO: Implement Recent Activity List
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Disable ListView's own scrolling
                itemCount: 3, // Placeholder count based on image
                itemBuilder: (context, index) {
                  // Placeholder data based on image
                  String name = '';
                  String activity = '';
                  String imageUrl = 'assets/images/profile.png';
                  if (index == 0) {
                    name = 'Ava Thompson';
                    activity = 'New Student Registration';
                  } else if (index == 1) {
                    name = 'Liam Harper';
                    activity = 'Mentor Session Completed';
                  } else if (index == 2) {
                    name = 'Chloe Foster';
                    activity = 'New Student Registration';
                  }
                  return _buildActivityListItem(name, activity, imageUrl);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOverviewCard(String title, String value) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityListItem(String name, String activity, String imageUrl) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
      ),
      title: Text(name),
      subtitle: Text(activity),
      onTap: () {
        // TODO: Implement action on activity item tap
      },
    );
  }
} 