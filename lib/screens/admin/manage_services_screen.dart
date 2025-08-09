import 'package:flutter/material.dart';
import '../../data/mock_services.dart';

class ManageServicesScreen extends StatelessWidget {
  const ManageServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quản lý dịch vụ cứu hộ')),
      body: ListView.builder(
        itemCount: mockServices.length,
        itemBuilder: (context, index) {
          final service = mockServices[index];
          return ListTile(
            title: Text(service['name'] as String),
          );
        },
      ),
    );
  }
}
