import 'package:flutter/material.dart';
import 'manage_users_screen.dart';
import 'manage_services_screen.dart';
import 'statistics_screen.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Quản lý người dùng'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ManageUsersScreen()),
            ),
          ),
          ListTile(
            title: const Text('Quản lý dịch vụ cứu hộ'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ManageServicesScreen()),
            ),
          ),
          ListTile(
            title: const Text('Thống kê'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const StatisticsScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
