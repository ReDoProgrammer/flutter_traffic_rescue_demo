import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    _MapMock(),
    _RequestsTab(),
    _ProfileTab(),
  ];

  void _onNavTap(int idx) => setState(() => _selectedIndex = idx);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bản đồ cứu hộ'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () => Navigator.pushNamed(context, '/list'),
            tooltip: 'Lịch sử yêu cầu',
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/new'),
        icon: const Icon(Icons.add_location_alt),
        label: const Text('Gửi yêu cầu'),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onNavTap,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.map), label: 'Map'),
          NavigationDestination(icon: Icon(Icons.list), label: 'Yêu cầu'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Cá nhân'),
        ],
      ),
    );
  }
}

class _MapMock extends StatelessWidget {
  const _MapMock();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.map_outlined, size: 120, color: Colors.grey),
          SizedBox(height: 12),
          Text('Bản đồ mock (không cần API key)\nĐể dùng Google Maps thật, thêm API key vào config native.',
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class _RequestsTab extends StatelessWidget {
  const _RequestsTab();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: () => Navigator.pushNamed(context, '/list'),
        icon: const Icon(Icons.list),
        label: const Text('Mở danh sách yêu cầu'),
      ),
    );
  }
}

class _ProfileTab extends StatelessWidget {
  const _ProfileTab();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/profile'),
        child: const Text('Xem hồ sơ'),
      ),
    );
  }
}
