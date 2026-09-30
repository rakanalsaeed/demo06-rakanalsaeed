import 'package:flutter/material.dart';
import 'navigation_lab_screen.dart';
import 'layout_lab_screen.dart';

class DemoHomeScreen extends StatelessWidget {
  const DemoHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SWE 463 - Demo06')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Navigation + Layout Widgets',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'The starter app runs now. Complete the six TODO stages in order and commit after each stage.',
          ),
          const SizedBox(height: 20),
          _PartCard(
            title: 'Part 1 - Navigation',
            subtitle: 'Bottom navigation, tabs, and external links',
            icon: Icons.navigation,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const NavigationLabScreen()),
            ),
          ),
          const SizedBox(height: 12),
          _PartCard(
            title: 'Part 2 - Layout & Collections',
            subtitle: 'Expanded/Flexible, ListTile/Card, ListView/GridView',
            icon: Icons.dashboard_customize,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LayoutLabScreen()),
            ),
          ),
          const SizedBox(height: 24),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Learning rule: do not copy all tasks at once. Run the app after every task, verify the expected behavior, then commit.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PartCard extends StatelessWidget {
  const _PartCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, size: 34),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
