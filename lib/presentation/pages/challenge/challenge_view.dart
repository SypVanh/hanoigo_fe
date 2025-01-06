import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/home/home_viewmodel.dart';
import 'package:hanoigo/presentation/pages/location/location.dart';
import 'package:hanoigo/presentation/pages/task/task_view.dart';

class ChallengeScreen extends StatelessWidget {
  HomeViewModel get viewModel => Get.find<HomeViewModel>();

  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final areas = [
      {
        'placeId': 3,
        'collectibleItemId': 7,
        'title': 'Bắc Thành Huyền Sử',
        'subtitle': 'Trấn Vũ Quán - Huyền Thiên Thượng đế',
        'color': Colors.purple,
      },
      {
        'placeId': 2,
        'collectibleItemId': 2,
        'title': 'Đông Thành Tôn Kính',
        'subtitle': 'Bạch Mã tối linh từ - Thành Hoàng thần',
        'color': Colors.amber,
      },
      {
        'placeId': 3,
        'collectibleItemId': 3,
        'title': 'Nam Thành Văn Hiến',
        'subtitle': 'Kim Liên từ - Cao Sơn Đại vương',
        'color': Colors.green,
      },
      {
        'placeId': 4,
        'collectibleItemId': 4,
        'title': 'Tây Thành Uy Nghi',
        'subtitle': 'Tây trấn từ - Linh Lang Hoàng tử',
        'color': Colors.red,
      },
    ];

    return Observer(builder: (context) {
      return Scaffold(
        appBar: AppBar(
            title: const Text('Thử thách'),
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
                      viewModel.toLeaderboard();
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
                      viewModel.toCollection();
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
                    label: const Text('4'),
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Do thám khu vực',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                    return InkWell(
                      onTap: () async {
                        final location = getLocationByPlaceId(area['placeId'] as int);
                        final item = getCollectibleItemById(area['collectibleItemId'] as int);
                        await Get.dialog(TaskView(
                          title: area['title'] as String,
                          subtitle: 'Khám phá địa điểm thú vị',
                          description: 'Đây là một địa điểm độc đáo với nhiều điều thú vị đang chờ đón bạn.',
                          locationName: location.name,
                          locationImage: location.imageUrl,
                          locationAddress: location.address,
                          linhThuName: item.name,
                          linhThuImage: item.imagePath,
                        ));
                      },
                      child: Card(
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
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
