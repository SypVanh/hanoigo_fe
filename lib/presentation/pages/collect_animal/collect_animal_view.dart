import 'package:flutter/material.dart';

class CollectAnimalsScreen extends StatelessWidget {
  const CollectAnimalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Thu thập Linh thú',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.white),
            onPressed: () {
              // Logic cho nút trợ giúp
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Banner section
          Stack(
            children: [
              Image.asset(
                'assets/background_image.png', // Thay bằng đường dẫn hình ảnh
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 16,
                left: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.purple),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Nhanh tay rung chuông!',
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Image.asset(
                    'assets/bell_icon.png', // Thay bằng đường dẫn hình chuông
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Description section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Hướng Camera thiết bị về phía di tích bạn chọn, chuông vàng sẽ hiện ra khi thời cơ chín muồi...',
                style: TextStyle(color: Colors.black87, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Spacer(),
          // Bottom Navigation Bar
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Colors.grey[300]!),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildBottomNavItem(Icons.explore, 'Khám phá', isActive: false),
                _buildBottomNavItem(Icons.emoji_events, 'Thử thách', isActive: true),
                _buildBottomNavItem(Icons.qr_code_scanner, 'Quét AR', isActive: false),
                _buildBottomNavItem(Icons.bookmark, 'Đã lưu', isActive: false),
                _buildBottomNavItem(Icons.person, 'Cá nhân', isActive: false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(IconData icon, String label, {bool isActive = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: isActive ? Colors.purple : Colors.grey),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.purple : Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CollectAnimalsScreen(),
  ));
}
