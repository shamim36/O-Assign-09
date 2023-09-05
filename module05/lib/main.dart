import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jarvis',
      // home: HomeScreen(),
      home: SecondScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'IronMan',
          style: TextStyle(color: Colors.lightGreen),
        ),
        backgroundColor: Colors.indigo,
        leading: const Icon(Icons.accessibility_sharp, color: Colors.green),
      ),
      backgroundColor: Colors.white12,
      body: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        centerTitle: true,
        title:
            const Text('IronMan', style: TextStyle(color: Colors.lightGreen)),
        backgroundColor: Colors.indigo,
        leading: const Icon(Icons.accessibility_sharp, color: Colors.green),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Column #1',
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            Text(
              'Column #2',
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text('Column #3'),
            Icon(
              Icons.add_a_photo_rounded,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
