import 'package:flutter/material.dart';

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