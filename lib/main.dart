import 'package:flutter/material.dart';
import 'screens/demo_home_screen.dart';

void main() {
  runApp(const Demo06App());
}

class Demo06App extends StatelessWidget {
  const Demo06App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo06',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const DemoHomeScreen(),
    );
  }
}
