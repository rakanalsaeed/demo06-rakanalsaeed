import 'package:flutter/material.dart';
import 'expanded_flexible_screen.dart';
import 'listtile_card_screen.dart';
import 'lists_grids_screen.dart';

class LayoutLabScreen extends StatelessWidget {
  const LayoutLabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final demos = [
      ('Task 4', 'Expanded & Flexible', const ExpandedFlexibleScreen()),
      ('Task 5', 'ListTile & Card', const ListTileCardScreen()),
      ('Task 6', 'ListView & GridView', const ListsGridsScreen()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Part 2 - Layout & Collections')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: demos.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final demo = demos[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text('${index + 4}')),
              title: Text(demo.$2),
              subtitle: Text(demo.$1),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => demo.$3),
              ),
            ),
          );
        },
      ),
    );
  }
}
