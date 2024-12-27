import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/widgets/list_header.dart';

class SavedPlacesScreen extends StatelessWidget {
  const SavedPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Địa điểm đã lưu'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {
              // Xử lý logic chia sẻ
            },
          ),
        ],
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: ColorName.primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const RecommendationsSection(),

            // Phần Nhật ký hành trình
            // const Text(
            //   'Nhật ký hành trình',
            //   style: TextStyle(
            //     fontSize: 18,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // const SizedBox(height: 10),
            // SizedBox(
            //   height: 180,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       _buildJourneyCard('Quận Hoàn Kiếm', '20 địa điểm, 8 ngày', Assets.images.quanHoanKiem.path),
            //       _buildJourneyCard('Quận Đống Đa', '20 địa điểm, 8 ngày', Assets.images.quanDongDa.path),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 24),

            // Phần Danh sách của bạn
            ListHeader(title: 'Danh sách của bạn', actionTitle: '', onTap: () {}),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildCategoryCard(
                    'Đã ghé thăm',
                    '10 địa điểm đã lưu',
                    Icons.check_circle,
                    Colors.green,
                  ),
                  _buildCategoryCard(
                    'Muốn đến',
                    '10 địa điểm đã lưu',
                    Icons.push_pin,
                    Colors.blue,
                  ),
                  _buildCategoryCard(
                    'Mục yêu thích',
                    '10 địa điểm đã lưu',
                    Icons.favorite,
                    Colors.red,
                  ),
                  _buildCategoryCard(
                    'Nổi bật',
                    '10 địa điểm đã lưu',
                    Icons.star,
                    Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJourneyCard(String title, String subtitle, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, String subtitle, IconData icon, Color iconColor) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: iconColor),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendationsSection extends StatelessWidget {
  const RecommendationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final recommendations = [
      {'title': 'Nhà hát Lớn Hà Nội', 'subtitle': '1 Tràng Tiền, Hoàn Kiếm', 'imageUrl': Assets.images.nhaHatLon.path},
      {'title': 'Đền Ngọc Sơn', 'subtitle': 'P. Đình Tiên Hoàng, Hoàn Kiếm', 'imageUrl': Assets.images.denNgocSon.path},
      {'title': 'Khuê Văn Các', 'subtitle': 'P. Quốc Tử Giám, Đống Đa', 'imageUrl': Assets.images.khueVanCac.path},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListHeader(title: 'Nhật ký hành trình', actionTitle: 'Xem thêm', onTap: () {}),
        const Gap(12),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: recommendations.length,
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final item = recommendations[index];
              return Container(
                width: 235,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: ColorName.primaryColor, // Màu viền
                    width: 1, // Độ dày của viền
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Display image from assets
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            item['imageUrl']!, // Đường dẫn đến ảnh trong assets
                            width: 200,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.place, color: Colors.red),
                          const Gap(8),
                          Text(item['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(item['subtitle']!, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
