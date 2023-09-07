import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
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
        backgroundColor: Colors.green,
        toolbarHeight: 100,
        elevation: 70,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.add_business_rounded, color: Colors.white),
        actions: const [
          Icon(Icons.search, color: Colors.white),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is mod 5 Assignment',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 23, color: Colors.red),
                    text: 'My ',
                    children: [
                      TextSpan(
                          text: 'phone ',
                          style: TextStyle(fontSize: 13, color: Colors.blue)),
                      TextSpan(
                          text: 'name ',
                          style: TextStyle(fontSize: 16, color: Colors.pink)),
                      TextSpan(
                          text: 'Your phone name ',
                          style: TextStyle(color: Colors.orange)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
