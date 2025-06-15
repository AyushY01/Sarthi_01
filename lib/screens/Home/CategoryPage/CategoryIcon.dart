import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color bgColor;
  final VoidCallback onTap;

  const CategoryIcon({
    required this.icon,
    required this.label,
    required this.bgColor,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: bgColor,
            child: Icon(icon, size: 30, color: Colors.blue),
          ),
          const SizedBox(height: 6),
          Text(label),
        ],
      ),
    );
  }
}
