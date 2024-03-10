import 'package:flutter/material.dart';
import 'package:onboard_page_task/ui/pages/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue),
              onPressed: () async {
                final SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                await preferences
                    .setBool('login', true)
                    .then((_) => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        ));
                setState(() {});
              },
              child: const Text('click')),
        ],
      ),
    );
  }
}
