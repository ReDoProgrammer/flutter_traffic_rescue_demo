import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/map_screen.dart';
import 'screens/rescue_list_screen.dart';
import 'screens/new_request_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const TrafficRescueApp());
}

class TrafficRescueApp extends StatelessWidget {
  const TrafficRescueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traffic Rescue Demo',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.red),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/map': (context) => const MapScreen(),
        '/list': (context) => const RescueListScreen(),
        '/new': (context) => const NewRequestScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
