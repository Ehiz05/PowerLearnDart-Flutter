import 'package:flutter/material.dart';

void main() {
  runApp(const SunepaBurudaniApp());
}

class SunepaBurudaniApp extends StatelessWidget {
  const SunepaBurudaniApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void _onButtonPressed() {
    print("Button clicked! Welcome to Flutter!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sunepa Burudani App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Hub!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?crop=entropy&cs=tinysrgb&w=600&fit=max',
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _onButtonPressed,
              child: const Text('Click Me!'),
            ),
          ],
        ),
      ),
    );
  }
}
