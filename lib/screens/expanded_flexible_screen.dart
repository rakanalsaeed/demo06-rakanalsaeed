import 'package:flutter/material.dart';

class ExpandedFlexibleScreen extends StatelessWidget {
  const ExpandedFlexibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 4 - Expanded & Flexible')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Goal: divide the available Row space using flex values.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Starter output uses two fixed-width boxes. Your job is to make them share the row in a 1:2 ratio.'),
            const SizedBox(height: 16),
            SizedBox(
              height: 110,
              child: Row(
                children: [
                  // ========================================================
                  // TASK 4A TODO
                  // Replace ONLY this first Container with:
                  // Expanded(
                  //   flex: 1,
                  //   child: Container(
                  //     color: Colors.indigo,
                  //     child: const Center(child: Text('flex: 1')),
                  //   ),
                  // )
                  // ========================================================
                  Container(
                    width: 100,
                    color: Colors.indigo,
                    child: const Center(child: Text('fixed 100')),
                  ),
                  const SizedBox(width: 8),

                  // TASK 4B TODO: Do the same here, but use Expanded(flex: 2).
                  Container(
                    width: 100,
                    color: Colors.teal,
                    child: const Center(child: Text('fixed 100')),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'Experiment after finishing: temporarily change the first Expanded to Flexible. Observe the result, then restore the required 1:2 Expanded layout.',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
