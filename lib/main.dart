import 'package:flutter/material.dart';
import 'screens/user/user_home_screen.dart';
import 'screens/rescue_service/rescue_dashboard_screen.dart';
import 'screens/admin/admin_dashboard_screen.dart';

void main() {
  runApp(const RescueApp());
}

class RescueApp extends StatelessWidget {
  const RescueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rescue App Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RoleSelectionScreen(),
    );
  }
}

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chọn vai trò')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Người dùng'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const UserHomeScreen()),
              ),
            ),
            ElevatedButton(
              child: const Text('Dịch vụ cứu hộ'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RescueDashboardScreen()),
              ),
            ),
            ElevatedButton(
              child: const Text('Admin'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AdminDashboardScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
