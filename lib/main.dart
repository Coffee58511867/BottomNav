import 'package:bottom_navbar/bottom_nav.dart';
import 'package:bottom_navbar/home.dart';
import 'package:bottom_navbar/profile.dart';
import 'package:bottom_navbar/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/home': (context) => const HomePage(),
        '/dashboard': (context) => const Dashboard(),
        '/settings': (context) => const SettingPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Profile Page'),
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[100],
        onPressed: () {
          Navigator.pushNamed(context, '/dashboard');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
