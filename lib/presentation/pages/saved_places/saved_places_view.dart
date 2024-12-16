import 'package:flutter/material.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';

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
          automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Phần Nhật ký hành trình
            const Text(
              'Nhật ký hành trình',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildJourneyCard('Quận Hoàn Kiếm', '20 địa điểm, 8 ngày', Assets.images.quanHoanKiem.path),
                  _buildJourneyCard('Quận Đống Đa', '20 địa điểm, 8 ngày', Assets.images.quanDongDa.path),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Phần Danh sách của bạn
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Danh sách của bạn',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Xử lý tạo mới
                  },
                  child: const Text('Tạo mới'),
                ),
              ],
            ),
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
      child: Padding(
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
