import 'package:flutter/material.dart';
import 'package:onboard_page_task/ui/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Home page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue),
              onPressed: () {},
              child: const Text('click')),
        ],
      ),
    );
  }
}
