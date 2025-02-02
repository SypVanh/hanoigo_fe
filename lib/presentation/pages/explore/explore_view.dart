import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hanoigo/foundation/extension/text_ext.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/home/home_viewmodel.dart';
import 'package:hanoigo/presentation/pages/location/location.dart';
import 'package:hanoigo/presentation/pages/styles/text_style.dart';
import 'package:hanoigo/presentation/widgets/custom_textfield.dart';
import 'package:hanoigo/presentation/widgets/list_header.dart';
import 'package:hanoigo/presentation/widgets/primary_button.dart';
import 'package:hanoigo/presentation/widgets/svg_view.dart';

part './components/header_section.dart';
part './components/category_list.dart';

class ExploreView extends StatelessWidget {
  HomeViewModel get viewModel => Get.find<HomeViewModel>();

  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            _buildHeaderSection(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildCategoryList(),
                    const Gap(32),
                    // const MapSection(),
                    // const Gap(32),
                    ChallengeCard(
                      onPressed: () => viewModel.setCurrentPageIndex(1),
                    ),
                    const Gap(32),
                    const RecommendationsSection(),
                    const Gap(32),
                    const RankingSection(),
                    const Gap(32),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

// Map Section
class MapSection extends StatelessWidget {
  const MapSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ListHeader(title: 'Bản đồ', actionTitle: 'Xem chi tiết', onTap: () {}),
          const Gap(12),
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: Stack(
              children: [
                const Center(child: Text('Bản đồ', style: TextStyle(color: Colors.grey))),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: FloatingActionButton(
                      backgroundColor: ColorName.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      onPressed: () {},
                      child: SvgView(
                        assetPath: Assets.icons.mapsArrowDiagonal.path,
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Challenge Card
class ChallengeCard extends StatelessWidget {
  final VoidCallback onPressed;
  const ChallengeCard({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ListHeader(title: 'Thử thách linh thú', onTap: () {}),
          const Gap(12),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorName.primaryColor,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorName.backgroundColor,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: const Text(
                            'Khám phá di tích lịch sử và văn hóa Hà Nội theo cách mới mẻ và cực kỳ thú vị!',
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ).workSan_12W500().color(Colors.black),
                        ),
                      ),
                      const Gap(16),
                      SvgView(assetPath: Assets.icons.dragon.path, width: 100, height: 100),
                    ],
                  ),
                ),
                const Gap(16),
                PrimaryButton(title: 'Tham gia ngay', onPressed: onPressed),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Recommendations Section
class RecommendationsSection extends StatelessWidget {
   HomeViewModel get viewModel => Get.find<HomeViewModel>();

  const RecommendationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    
    final recommendations = hanoiLocations;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListHeader(title: 'Gợi ý cho bạn', actionTitle: 'Xem thêm', onTap: () {}),
          const Gap(12),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: recommendations.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final item = recommendations[index];
                return InkWell(
                  onTap: () => viewModel.toPlaceDetail(item.id),
                  child: Container(
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
                          // Display image from assets
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Ranking Section
class RankingSection extends StatelessWidget {
  HomeViewModel get viewModel => Get.find<HomeViewModel>();

  const RankingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> rankings = [
      {'name': 'Nguyễn Văn A', 'avatar': Assets.images.naruto.path, 'points': 1500},
      {'name': 'Trần Thị B', 'avatar': Assets.images.sasuke.path, 'points': 1200},
      {'name': 'Lê Văn C', 'avatar': Assets.images.sakura.path, 'points': 950},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListHeader(
              title: 'Bảng xếp hạng',
              actionTitle: 'Xem tất cả',
              onTap: () {
                viewModel.toLeaderboard();
              }),
          ListView.builder(
            itemCount: rankings.length,
            shrinkWrap: true, // To prevent ListView inside Column layout issues
            physics: const NeverScrollableScrollPhysics(), // Disable scrolling for inner ListView
            itemBuilder: (context, index) {
              final user = rankings[index];
              return Padding(
                padding: EdgeInsets.only(top: index == 0 ? 0 : 10, bottom: 10),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: ColorName.secondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      // Avatar
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(user['avatar']) as ImageProvider,
                      ),
                      const SizedBox(width: 16),
                      // User Info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user['name'] as String, // Cast explicitly to String
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '${user['points']} điểm',
                              style: const TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      // Rank Badge
                      Text(
                        '#${index + 1}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: ColorName.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
