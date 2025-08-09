import 'package:flutter/material.dart';
import '../../data/mock_requests.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final total = mockRequests.length;
    final completed = mockRequests
        .where((req) => req['status'] == 'completed')
        .length;
    final pending = mockRequests
        .where((req) => req['status'] == 'pending')
        .length;

    return Scaffold(
      appBar: AppBar(title: const Text('Thống kê')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Tổng số yêu cầu: $total'),
            Text('Hoàn thành: $completed'),
            Text('Đang chờ: $pending'),
          ],
        ),
      ),
    );
  }
}
