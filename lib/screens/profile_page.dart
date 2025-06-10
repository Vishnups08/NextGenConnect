import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                // App Bar with Title only (no back arrow)
                const SizedBox(height: 16),
                const Center(
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Profile Image
                CircleAvatar(
                  radius: 64,
                  backgroundColor: const Color(0xFFF3F5F8),
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                const SizedBox(height: 24),
                // Name
                const Text(
                  'Vishnu',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                // Role
                const Text(
                  'Student',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF7B8BB2),
                  ),
                ),
                const SizedBox(height: 4),
                // University
                const Text(
                  'University of California, Berkeley',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF7B8BB2),
                  ),
                ),
                const SizedBox(height: 32),
                // Account Section
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                _profileListTile(Icons.person_outline, 'Edit Profile'),
                _profileListTile(Icons.settings_outlined, 'Settings'),
                _profileListTile(Icons.notifications_none, 'Notifications'),
                _profileListTile(Icons.shield_outlined, 'Privacy'),
                const SizedBox(height: 32),
                // Support Section
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Support',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                _profileListTile(Icons.help_outline, 'Help Center'),
                _profileListTile(Icons.mail_outline, 'Contact Us'),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _profileListTile(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF3F5F8),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(12),
            child: Icon(icon, size: 28, color: Colors.black),
          ),
          const SizedBox(width: 16),
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
} 