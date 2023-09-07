import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'IronMan',
      debugShowCheckedModeBanner: false,
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
        title: const Text(
          'IronMan',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        leading: const Icon(
          Icons.home,
          color: Colors.black,
          size: 28,
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      backgroundColor: Colors.cyan,
      body: const Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello World!',
                style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              ),
              const Text('Hello World!!', style: TextStyle(fontSize: 30)),
              const Text('Hello World!!!', style: TextStyle(fontSize: 30)),
              Image.asset(
                ///never use const Scaffold inorder to use Image class
                'images/me.jpg',
                height: 200,
                width: 200,
              ),
              Image.network(
                'https://th.bing.com/th/id/OIP.--Y0iYznvimRR47CewpzLAHaE8?pid=ImgDet&rs=1',
                height: 200,
                width: 200,
                fit: BoxFit.scaleDown,
              ),
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Hello, ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                      children: [
                        TextSpan(
                            text: 'How Are you? ',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Colors.red)),
                        TextSpan(text: 'Good Morning!!!'),
                      ],
                    ),
                  ),
                ],
              ),

              // Image.asset("images/me.jpg"),
            ],
          ),
        ],
      ),
    );
  }
}
