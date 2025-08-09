import 'package:flutter/material.dart';

class RequestRescueScreen extends StatelessWidget {
  const RequestRescueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locationController = TextEditingController();
    final descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Yêu cầu cứu hộ')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: locationController,
              decoration: const InputDecoration(labelText: 'Vị trí'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Mô tả sự cố'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Giả lập gửi yêu cầu
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Yêu cầu đã được gửi')),
                );
                Navigator.pop(context);
              },
              child: const Text('Gửi'),
            ),
          ],
        ),
      ),
    );
  }
}
