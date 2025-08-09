import 'package:flutter/material.dart';

class NewRequestScreen extends StatefulWidget {
  const NewRequestScreen({super.key});

  @override
  State<NewRequestScreen> createState() => _NewRequestScreenState();
}

class _NewRequestScreenState extends State<NewRequestScreen> {
  final _locationCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  String _vehicleType = 'Xe máy';
  String _service = 'Hết xăng';

  @override
  void dispose() {
    _locationCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  void _sendRequest() {
    // Mock send
    if (_locationCtrl.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Vui lòng nhập vị trí')));
      return;
    }
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Đã gửi yêu cầu'),
        content: const Text('Yêu cầu cứu hộ đã được gửi (mock). Tài xế đang đến.'),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          }, child: const Text('OK'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tạo yêu cầu cứu hộ')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _locationCtrl, decoration: const InputDecoration(labelText: 'Vị trí (vd: cầu A, Q1)')),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              value: _service,
              items: ['Hết xăng', 'Thay lốp', 'Kéo xe', 'Sửa tại chỗ'].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
              onChanged: (v) => setState(() { _service = v ?? _service; }),
              decoration: const InputDecoration(labelText: 'Loại dịch vụ'),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              value: _vehicleType,
              items: ['Xe máy', 'Ô tô', 'Xe tải'].map((v) => DropdownMenuItem(value: v, child: Text(v))).toList(),
              onChanged: (v) => setState(() { _vehicleType = v ?? _vehicleType; }),
              decoration: const InputDecoration(labelText: 'Loại phương tiện'),
            ),
            const SizedBox(height: 12),
            TextField(controller: _descCtrl, decoration: const InputDecoration(labelText: 'Mô tả (tuỳ chọn)')),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _sendRequest,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  child: Text('Gửi yêu cầu', style: TextStyle(fontSize: 16)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
