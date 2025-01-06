import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/location/location.dart';
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
            onPressed: () {},
          ),
        ],
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: ColorName.primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            RecommendationsSection(),
            SizedBox(height: 24),
            // ListHeader(title: 'Danh sách của bạn', actionTitle: '', onTap: () {}),
            // const SizedBox(height: 10),
            // Expanded(
            // child: GridView.count(
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 16,
            //   mainAxisSpacing: 16,
            //   children: [
            //     _buildCategoryCard(
            //       'Đã ghé thăm',
            //       '10 địa điểm đã lưu',
            //       Icons.check_circle,
            //       Colors.green,
            //     ),
            //     _buildCategoryCard(
            //       'Muốn đến',
            //       '10 địa điểm đã lưu',
            //       Icons.push_pin,
            //       Colors.blue,
            //     ),
            //     _buildCategoryCard(
            //       'Mục yêu thích',
            //       '10 địa điểm đã lưu',
            //       Icons.favorite,
            //       Colors.red,
            //     ),
            //     _buildCategoryCard(
            //       'Nổi bật',
            //       '10 địa điểm đã lưu',
            //       Icons.star,
            //       Colors.yellow,
            //     ),
            //   ],
            // ),
            // ),
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
    final recommendations = hanoiLocations;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListHeader(title: 'Nhật ký hành trình', actionTitle: '', onTap: () {}),
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
                    color: ColorName.primaryColor,
                    width: 1,
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            item.imageUrl,
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
                          Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(item.address, style: const TextStyle(color: Colors.grey, overflow: TextOverflow.ellipsis)),
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
