import 'package:flutter/material.dart';
// Assuming a charting library like fl_chart would be used for actual charts

class AdminAnalyticsPage extends StatelessWidget {
  const AdminAnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analytics'), // Set title to Analytics
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
                    child: _buildOverviewCard('Total Users', '1,250'), // Changed from Students
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildOverviewCard('Active Users', '875'), // Changed from Active Mentors
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _buildOverviewCard('New Users', '150'), // Changed from Completed Sessions
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'User Engagement',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Placeholder for Daily Active Users Chart
              _buildChartPlaceholder('Daily Active Users', '+15%', 'Last 7 Days'),
              const SizedBox(height: 16),
              // Placeholder for User Growth Chart
              _buildChartPlaceholder('User Growth', '+20%', 'Last 30 Days'),
              const SizedBox(height: 24),
              const Text(
                'Content Performance',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
               // Placeholder for Most Popular Resources
              _buildContentPerformancePlaceholder('Most Popular Resources', '1200', 'Last Month'),
               const SizedBox(height: 8),
               _buildResourceListItem('Resume Templates'),
               _buildResourceListItem('Interview Guides'),
               _buildResourceListItem('Skill Assessments'),
               _buildResourceListItem('Career Paths'),
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
            offset: const Offset(0, 2), // changes position of shadow
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
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChartPlaceholder(String title, String percentage, String period) {
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
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
           Text(
            percentage,
            style: TextStyle(
              fontSize: 16,
              color: Colors.green[700],
            ),
          ),
           const SizedBox(height: 8),
           // Placeholder for the chart - replace with actual chart widget
           Container(
             height: 100, // Adjust height as needed
             color: Colors.grey[300],
             child: const Center(child: Text('Chart Placeholder')),
           ),
            const SizedBox(height: 8),
           Text(
            period,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

   Widget _buildContentPerformancePlaceholder(String title, String value, String period) {
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
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
           const SizedBox(height: 4),
           Text(
            '$value $period',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
           const SizedBox(height: 8),
           // Placeholder for the chart/list - replace with actual widget
        ],
      ),
    );
  }

    Widget _buildResourceListItem(String resource) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.insert_drive_file, color: Colors.grey[600]),
          const SizedBox(width: 8),
          Text(resource),
        ],
      ),
    );
  }
}