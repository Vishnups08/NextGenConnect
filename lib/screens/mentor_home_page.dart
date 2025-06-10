import 'package:flutter/material.dart';

class MentorHomePage extends StatelessWidget {
  const MentorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentor Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Image
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.png'), // Placeholder image
              ),
              const SizedBox(height: 16),
              // Mentor Name
              const Text(
                'Dr. Ethan Carter',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              // Mentor Title
              const Text(
                'Career Coach',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 4),
              // Years of Experience
              const Text(
                '10+ years of experience',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              // Stats Cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildStatCard('25', 'Students'),
                  buildStatCard('150', 'Sessions'),
                  buildStatCard('4.8', 'Rating'),
                ],
              ),
              const SizedBox(height: 24),
              // About Section
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Dr. Carter is a seasoned career coach with over a decade of experience guiding students towards their professional goals. He specializes in career exploration, resume building, and interview preparation.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24),
              // Skills Section
               Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: [
                  buildSkillChip('Career Counseling'),
                  buildSkillChip('Resume Writing'),
                  buildSkillChip('Interview Coaching'),
                  buildSkillChip('Networking'),
                  buildSkillChip('Personal Branding'),
                ],
              ),
              const SizedBox(height: 24),
              // Availability Section
               Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Availability',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.grey[700]),
                  const SizedBox(width: 8),
                  Text(
                    '9:00 AM - 5:00 PM\nMonday - Friday',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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