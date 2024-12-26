import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/widgets/svg_view.dart';

class CollectSuccessScreen extends StatelessWidget {
  const CollectSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600], // Màu nền chính
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Phần tiêu đề
              const Text(
                'Thu thập thành công',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const Gap(24),

              // Card nhân vật
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Tên và đánh giá
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Bách đại ca',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: List.generate(
                                3,
                                (index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        // Hình nhân vật
                        Expanded(
                            child: SvgView(assetPath: Assets.icons.snake.path, width: double.infinity, height: 300)),

                        const SizedBox(height: 16),

                        // Vị trí và thời gian
                        const Text(
                          'Hoàn Kiếm, Hà Nội\n13h28\' - 12/26/2024',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const Gap(24),

              // Phần thưởng
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RewardItem(
                    icon: Icons.emoji_events,
                    label: '+200',
                    description: 'Điểm xếp hạng',
                  ),
                  RewardItem(
                    icon: Icons.extension,
                    label: '+10',
                    description: 'Mảnh đổi quà',
                  ),
                ],
              ),

              const Gap(24),

              // Nút nhận thưởng
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorName.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 24,
                  ),
                ),
                onPressed: () {
                  // Xử lý sự kiện khi nhấn nút
                },
                child: const Text(
                  'Nhận thưởng',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),

              const Gap(24),
            ],
          ),
        ),
      ),
    );
  }
}

class RewardItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String description;

  const RewardItem({
    super.key,
    required this.icon,
    required this.label,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40,
          color: ColorName.primaryColor,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: ColorName.primaryColor,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
