import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/widgets/imgage_view.dart';
import 'package:hanoigo/presentation/widgets/list_header.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchHistory = [
      'Hồ Gươm',
      'Lý Thái Tổ',
      'Hoàng Thành',
      'Hòa Lò',
      'Chùa',
      'Bảo tàng Dân tộc học',
      'Hồ Chí Minh',
    ];

    final popularPlaces = [
      {
        'name': 'Hoàng Thành Thăng Long',
        'address': '1 Tràng Tiền, Phan Chu Trinh, Hoàn Kiếm, Hà Nội',
        'status': 'Đang mở cửa',
        'statusColor': Colors.red.shade100,
        'imageUrl': 'https://via.placeholder.com/150',
      },
      {
        'name': 'Nhà hát Lớn Hà Nội',
        'address': '1 Tràng Tiền, Phan Chu Trinh, Hoàn Kiếm, Hà Nội',
        'status': 'Đóng cửa',
        'statusColor': Colors.grey.shade300,
        'imageUrl': 'https://via.placeholder.com/150',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quận Nam Từ Liêm"),
        centerTitle: true,
        backgroundColor: ColorName.primaryColor,
        titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(24),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Tìm kiếm tại đây...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),
            const SizedBox(height: 16),

            // Filter Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list, size: 16),
                  label: const Text('Bộ lọc tìm kiếm'),
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
                  icon: const Icon(Icons.map, size: 16),
                  label: const Text('Xem bản đồ'),
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

            // Search History
            const Text('Lịch sử tìm kiếm'),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: searchHistory
                  .map((item) => Chip(
                        label: Text(item),
                        backgroundColor: Colors.red.shade50,
                      ))
                  .toList(),
            ),
            const SizedBox(height: 16),

            // Popular Places
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     const Text('Địa điểm phổ biến', style: TextStyle(fontSize: 16)),
            //     TextButton(
            //       onPressed: () {},
            //       child: const Text('Xem thêm'),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 8),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: popularPlaces.length,
            //     itemBuilder: (context, index) {
            //       final place = popularPlaces[index];
            //       return Card(
            //         color: place['statusColor'] as Color,
            //         child: ListTile(
            //           leading: Image.network(place['imageUrl'] as String),
            //           title: Text(place['name'] as String),
            //           subtitle: Text(place['address'] as String),
            //           trailing: IconButton(
            //             icon: const Icon(Icons.favorite_border),
            //             onPressed: () {},
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
