import 'package:flutter/material.dart';

class ListTileCardScreen extends StatelessWidget {
  const ListTileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 5 - ListTile & Card')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Goal: replace a manually arranged row with Material Card + ListTile.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('The starter already shows Sara. Keep the same information, but give it a standard Material structure and interactions.'),
            const SizedBox(height: 16),

            // ============================================================
            // TASK 5 TODO - Replace this Container with Card + ListTile.
            // Use this scaffold and complete the TODO parts:
            //
            // Card(
            //   child: ListTile(
            //     leading: const CircleAvatar(child: Icon(Icons.person)),
            //     title: const Text('Sara Ahmed'),
            //     subtitle: const Text('sara@kfupm.edu.sa'),
            //     trailing: IconButton(
            //       icon: const Icon(Icons.favorite_border),
            //       onPressed: () {
            //         // TODO: show SnackBar('Favorite pressed')
            //       },
            //     ),
            //     onTap: () {
            //       // TODO: show SnackBar('Sara selected')
            //     },
            //   ),
            // )
            //
            // Hint for a SnackBar:
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(content: Text('Sara selected')),
            // );
            // ============================================================
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: const Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 12),
                  Expanded(child: Text('Sara Ahmed - sara@kfupm.edu.sa')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
