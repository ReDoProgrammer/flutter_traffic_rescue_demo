import 'package:flutter/material.dart';
import 'request_rescue_screen.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trang người dùng')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Gửi yêu cầu cứu hộ'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RequestRescueScreen()),
            );
          },
        ),
      ),
    );
  }
}
