import 'package:flutter/material.dart';
import 'external_link_screen.dart';
import 'tabs_screen.dart';

class NavigationLabScreen extends StatefulWidget {
  const NavigationLabScreen({super.key});

  @override
  State<NavigationLabScreen> createState() => _NavigationLabScreenState();
}

class _NavigationLabScreenState extends State<NavigationLabScreen> {
  int _selectedIndex = 0;

  // ============================================================
  // TASK 1A TODO - Connect the three real destination pages.
  // Replace ONLY the three _StarterPage(...) widgets below with:
  //   NavigationHomePage()
  //   TabsScreen()
  //   ExternalLinkScreen()
  // Keep the same order: Home = 0, Tabs = 1, Links = 2.
  // ============================================================
  final List<Widget> _pages = const [
    _StarterPage(title: 'Home placeholder', message: 'TODO 1A: connect NavigationHomePage.'),
    _StarterPage(title: 'Tabs placeholder', message: 'TODO 1A: connect TabsScreen.'),
    _StarterPage(title: 'Links placeholder', message: 'TODO 1A: connect ExternalLinkScreen.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Part 1 - Navigation')),
      body: _pages[_selectedIndex],

      // ============================================================
      // TASK 1B TODO - Replace this SafeArea with BottomNavigationBar.
      // Starter pattern (complete the ??? parts):
      //
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: ???,
      //   onTap: (index) {
      //     setState(() {
      //       ??? = index;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     // TODO: add Tabs item
      //     // TODO: add Links item
      //   ],
      // ),
      // ============================================================
      bottomNavigationBar: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Text('TODO 1B: BottomNavigationBar goes here', textAlign: TextAlign.center),
        ),
      ),
    );
  }
}

class NavigationHomePage extends StatelessWidget {
  const NavigationHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.navigation, size: 72),
            SizedBox(height: 16),
            Text('Navigation Home', style: TextStyle(fontSize: 24)),
            SizedBox(height: 8),
            Text(
              'Bottom navigation switches between peer destinations without pushing a new route.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _StarterPage extends StatelessWidget {
  const _StarterPage({required this.title, required this.message});
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Text(message, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
