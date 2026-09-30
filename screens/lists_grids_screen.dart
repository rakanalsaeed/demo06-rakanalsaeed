import 'package:flutter/material.dart';

class ListsGridsScreen extends StatelessWidget {
  const ListsGridsScreen({super.key});

  static const topics = [
    'Text', 'Row', 'Column', 'Stack', 'Expanded', 'Card', 'ListView', 'GridView',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 6 - ListView & GridView')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Goal: generate two scrolling UIs from the same topics list.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text('Complete 6A first and run the app. Then complete 6B.'),
            const SizedBox(height: 12),
            const Text('6A - ListView', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),

            // ============================================================
            // TASK 6A TODO - Replace this SizedBox with the scaffold below.
            // Complete the ??? parts.
            //
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: ???,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         leading: CircleAvatar(child: Text('${index + 1}')),
            //         title: Text(???),
            //       );
            //     },
            //   ),
            // )
            // ============================================================
            const SizedBox(height: 120, child: Center(child: Text('TODO 6A: ListView.builder'))),

            const Divider(height: 24),
            const Text('6B - GridView', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),

            // ============================================================
            // TASK 6B TODO - Replace this SizedBox with another Expanded.
            // Most of the code is given; complete the ??? parts.
            //
            // Expanded(
            //   child: GridView.builder(
            //     itemCount: ???,
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       crossAxisSpacing: 8,
            //       mainAxisSpacing: 8,
            //       childAspectRatio: 2.4,
            //     ),
            //     itemBuilder: (context, index) {
            //       return Card(
            //         child: Center(child: Text(???)),
            //       );
            //     },
            //   ),
            // )
            // ============================================================
            const SizedBox(height: 120, child: Center(child: Text('TODO 6B: GridView.builder'))),
          ],
        ),
      ),
    );
  }
}
