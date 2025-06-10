import 'package:flutter/material.dart';

class AdminProfilePage extends StatelessWidget {
  const AdminProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
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
              // Admin Name and Title
              const Text(
                'Vishnu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Admin',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
               const SizedBox(height: 4),
              const Text(
                'Joined 2021',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              // Account Section
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              _buildProfileListItem(Icons.person_outline, 'Edit Profile', () {
                // TODO: Implement Edit Profile action
              }),
              _buildProfileListItem(Icons.lock_outline, 'Change Password', () {
                // TODO: Implement Change Password action
              }),
              _buildProfileListItem(Icons.notifications_none, 'Notifications', () {
                // TODO: Implement Notifications action
              }),
              const SizedBox(height: 24),
              // Support Section
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Support',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              _buildProfileListItem(Icons.help_outline, 'Help Center', () {
                // TODO: Implement Help Center action
              }),
              _buildProfileListItem(Icons.mail_outline, 'Contact Us', () {
                // TODO: Implement Contact Us action
              }),
              const SizedBox(height: 48),
              // Log Out Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent, // Example color for logout
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Implement Log Out functionality
                  },
                  child: const Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileListItem(IconData icon, String text, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[700]),
      title: Text(text),
      trailing: Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey[500]),
      onTap: onTap,
    );
  }
} 