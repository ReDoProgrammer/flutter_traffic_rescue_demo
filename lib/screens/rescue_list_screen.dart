import 'package:flutter/material.dart';

class RescueListScreen extends StatelessWidget {
  const RescueListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mock = [
      {
        'title': 'Hỏng xe - Quốc lộ 1A',
        'time': '2025-08-01 09:12',
        'status': 'Đang xử lý',
        'driver': 'Nguyễn Văn A'
      },
      {
        'title': 'Hết xăng - Cầu Giấy',
        'time': '2025-07-28 16:40',
        'status': 'Hoàn thành',
        'driver': 'Trần Thị B'
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Lịch sử yêu cầu')),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: mock.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, i) {
          final item = mock[i];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.report_problem, color: Colors.orange),
              title: Text(item['title']!),
              subtitle: Text('Thời gian: ${item['time']}\nTài xế: ${item['driver']}'),
              trailing: Chip(label: Text(item['status']!)),
            ),
          );
        },
      ),
    );
  }
}
