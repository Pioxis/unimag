import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Login'),
        ),
        titleSpacing: 9,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('Universal Magazine'),
            const Text('\n'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Next Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
