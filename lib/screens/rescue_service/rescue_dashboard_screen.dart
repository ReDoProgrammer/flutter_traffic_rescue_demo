import 'package:flutter/material.dart';
import '../../data/mock_requests.dart';

class RescueDashboardScreen extends StatelessWidget {
  const RescueDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trang dịch vụ cứu hộ')),
      body: ListView.builder(
        itemCount: mockRequests.length,
        itemBuilder: (context, index) {
          final req = mockRequests[index];
          return ListTile(
            title: Text(req['user'] as String),
            subtitle: Text(req['description'] as String),
            trailing: Text(req['status'] as String),
          );
        },
      ),
    );
  }
}
