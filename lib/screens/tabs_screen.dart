import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ============================================================
    // TASK 2 TODO - Build 3 synchronized tabs.
    // Replace the Scaffold below with this starter structure.
    // Complete only the TODO/??? parts.
    //
    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Task 2 - Tabs'),
    //       bottom: const TabBar(
    //         tabs: [
    //           Tab(icon: Icon(Icons.info_outline), text: 'Overview'),
    //           // TODO: Code tab with Icons.code
    //           // TODO: Tips tab with Icons.lightbulb_outline
    //         ],
    //       ),
    //     ),
    //     body: const TabBarView(
    //       children: [
    //         TabContent(
    //           icon: Icons.info_outline,
    //           title: 'Overview',
    //           text: 'Tabs organize closely related views on one screen.',
    //         ),
    //         // TODO: add Code TabContent
    //         // TODO: add Tips TabContent
    //       ],
    //     ),
    //   ),
    // );
    // ============================================================
    return Scaffold(
      appBar: AppBar(title: const Text('Task 2 - Tabs')),
      body: const Center(
        child: Text('TODO 2: Create Overview, Code, and Tips tabs.'),
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  const TabContent({super.key, required this.icon, required this.title, required this.text});

  final IconData icon;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 64),
            const SizedBox(height: 12),
            Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(text, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
