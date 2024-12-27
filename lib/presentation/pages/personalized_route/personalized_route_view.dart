import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';

class PersonalizedRouteScreen extends StatefulWidget {
  const PersonalizedRouteScreen({super.key});

  @override
  State<PersonalizedRouteScreen> createState() => _PersonalizedRouteScreenState();
}

class _PersonalizedRouteScreenState extends State<PersonalizedRouteScreen> {
  // Danh sách địa điểm
  final List<Map<String, dynamic>> places = [
    {
      "image": Assets.images.langChuTich.path,
      "name": "Lăng Chủ Tịch Hồ Chí Minh",
      "address": "Ba Đình, Hà Nội",
      "isFavorite": true,
      "wantsToVisit": false,
    },
    {
      'name': 'Nhà hát Lớn Hà Nội',
      'address': '1 Tràng Tiền, Hoàn Kiếm',
      'image': Assets.images.nhaHatLon.path,
      "isFavorite": false,
      "wantsToVisit": false,
    },
    {
      'name': 'Đền Ngọc Sơn',
      'address': 'P. Đình Tiên Hoàng, Hoàn Kiếm',
      'image': Assets.images.denNgocSon.path,
      "isFavorite": true,
      "wantsToVisit": false,
    },
    {
      'name': 'Khuê Văn Các',
      'address': 'P. Quốc Tử Giám, Đống Đa',
      'image': Assets.images.khueVanCac.path,
      "isFavorite": false,
      "wantsToVisit": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gợi ý lộ trình cá nhân hóa"),
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
      body: Column(
        children: [
          // Mô tả gợi ý lộ trình
          // _buildHeaderDescription(),
          const Gap(24),
          Expanded(
            child: ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, index) {
                final place = places[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8.0),
                    color: ColorName.secondaryColor.withOpacity(0.1),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Hình ảnh địa điểm
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            place['image'],
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Thông tin địa điểm
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                place['name'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                place['address'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  // Icon "Yêu thích"
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        place['isFavorite'] = !place['isFavorite'];
                                      });
                                    },
                                    icon: Icon(
                                      place['isFavorite'] ? Icons.favorite : Icons.favorite_border,
                                      color: place['isFavorite'] ? Colors.red : Colors.grey,
                                    ),
                                  ),
                                  // Icon "Muốn đến"
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        place['wantsToVisit'] = !place['wantsToVisit'];
                                      });
                                    },
                                    icon: Icon(
                                      place['wantsToVisit'] ? Icons.bookmark : Icons.bookmark_border,
                                      color: place['wantsToVisit'] ? ColorName.secondaryColor : Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderDescription() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        "Gợi ý lộ trình cá nhân hóa giúp bạn khám phá các địa điểm phù hợp với sở thích và nhu cầu của bạn. Hãy đánh dấu yêu thích hoặc muốn đến để hoàn thiện lộ trình của mình!",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
          height: 1.5, // Tăng khoảng cách giữa các dòng
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
