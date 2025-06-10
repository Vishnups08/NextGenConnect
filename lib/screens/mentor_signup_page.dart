import 'package:flutter/material.dart';

class MentorSignUpPage extends StatelessWidget {
  const MentorSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                // App Bar with Back Arrow and Title
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Expanded(
                      child: Text(
                        'Mentor Registration',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 48), // To balance the back arrow
                  ],
                ),
                const SizedBox(height: 32),
                // Full Name Field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Full  Name',
                      filled: true,
                      fillColor: Color(0xFFF3F5F8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                // Email Field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      fillColor: Color(0xFFF3F5F8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                // Password Field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Color(0xFFF3F5F8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                // Confirm Password Field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm  Password',
                      filled: true,
                      fillColor: Color(0xFFF3F5F8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                 // LinkedIn Profile URL Field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'LinkedIn  Profile  URL',
                      filled: true,
                      fillColor: Color(0xFFF3F5F8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                 // Area of Expertise Field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Area  of  Expertise',
                      filled: true,
                      fillColor: Color(0xFFF3F5F8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // Register Button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1680F6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Sign In link
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // Go back to Mentor Login
                      },
                      child: Text(
                        'Already have an account? Sign In',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 