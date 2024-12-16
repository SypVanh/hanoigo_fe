import 'package:flutter/material.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/app/app_router.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final areas = [
      {
        'title': 'Bắc Thành Huyền Sử',
        'subtitle': 'Trấn Vũ Quán - Huyền Thiên Thượng đế',
        'color': Colors.purple,
      },
      {
        'title': 'Đông Thành Tôn Kính',
        'subtitle': 'Bạch Mã tối linh từ - Thành Hoàng thần',
        'color': Colors.amber,
      },
      {
        'title': 'Nam Thành Văn Hiến',
        'subtitle': 'Kim Liên từ - Cao Sơn Đại vương',
        'color': Colors.green,
      },
      {
        'title': 'Tây Thành Uy Nghi',
        'subtitle': 'Tây trấn từ - Linh Lang Hoàng tử',
        'color': Colors.red,
      },
    ];

    return Scaffold(
      appBar: AppBar(
          title: const Text('Thử thách'),
          // actions: [
          //   IconButton(
          //     icon: const Icon(Icons.settings),
          //     onPressed: () {},
          //   ),
          // ],
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
          backgroundColor: ColorName.primaryColor,
          centerTitle: true,
          automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context, Routes.PLACE_DETAIL);
                  },
                  icon: const Icon(Icons.emoji_events, size: 16),
                  label: const Text('Xếp hạng'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade50,
                    foregroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context, Routes.COLLECTION);
                  },
                  icon: const Icon(Icons.collections_bookmark, size: 16),
                  label: const Text('Bộ sưu tập'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade50,
                    foregroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.local_fire_department, size: 16),
                  label: const Text('10'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade50,
                    foregroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Section Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Do thám khu vực',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Tìm hiểu thêm'),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // List of Areas
            Expanded(
              child: ListView.builder(
                itemCount: areas.length,
                itemBuilder: (context, index) {
                  final area = areas[index];
                  return Card(
                    color: area['color'] as Color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text(
                        area['title'] as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        area['subtitle'] as String,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
