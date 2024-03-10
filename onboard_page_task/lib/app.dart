import 'package:flutter/material.dart';
import 'package:onboard_page_task/ui/pages/home.dart';
import 'package:onboard_page_task/ui/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? isLogin;
   @override
  void initState() {
    getInstance();
    super.initState();
  }

  void getInstance() async {
    final preferences = await SharedPreferences.getInstance();
    isLogin = preferences.getBool("login");
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isLogin == false ? const Home() : const Login(),
    );
  }
}
