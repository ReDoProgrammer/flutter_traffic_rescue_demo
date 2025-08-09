import 'package:flutter/material.dart';
import '../../data/mock_users.dart';

class ManageUsersScreen extends StatelessWidget {
  const ManageUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quản lý người dùng')),
      body: ListView.builder(
        itemCount: mockUsers.length,
        itemBuilder: (context, index) {
          final user = mockUsers[index];
          return ListTile(
            title: Text(user['name'] as String),
            subtitle: Text('Vai trò: ${user['role']}'),
          );
        },
      ),
    );
  }
}
