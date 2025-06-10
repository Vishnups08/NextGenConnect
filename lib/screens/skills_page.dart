import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                // App Bar with Title only (no back arrow)
                const SizedBox(height: 16),
                const Center(
                  child: Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'My Skills',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F9FB),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withAlpha(30),
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 64) / 2,
                        child: _enhancedSkillButton(Icons.work_outline, 'Project Management'),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 64) / 2,
                        child: _enhancedSkillButton(Icons.tv, 'Public Speaking'),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 64) / 2,
                        child: _enhancedSkillButton(Icons.groups, 'Teamwork'),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 64) / 2,
                        child: _enhancedSkillButton(Icons.edit, 'Design Thinking'),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 64) / 2,
                        child: _enhancedSkillButton(Icons.campaign, 'Communication'),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 64) / 2,
                        child: _enhancedSkillButton(Icons.language, 'Global Awareness'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Progress',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                _progressBar('Overall Progress', 0.6),
                const SizedBox(height: 16),
                _progressBar('Skill Development', 0.75),
                const SizedBox(height: 16),
                _progressBar('Networking', 0.5),
                const SizedBox(height: 16),
                _progressBar('Career Readiness', 0.8),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _enhancedSkillButton(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(18),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF3F5F8),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 28, color: Colors.black),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _progressBar(String label, double value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '${(value * 100).toInt()}%',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 8,
            backgroundColor: const Color(0xFFE5E8EC),
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
          ),
        ),
      ],
    );
  }
} 