import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/widgets/image_view.dart';
import 'package:hanoigo/presentation/widgets/svg_view.dart';

class TaskView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String locationName;
  final String locationImage;
  final String locationAddress;
  final String linhThuName;
  final String linhThuImage;

  const TaskView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.locationName,
    required this.locationImage,
    required this.locationAddress,
    required this.linhThuName,
    required this.linhThuImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: ColorName.primaryColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Subtitle
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const Gap(8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const Gap(24),

            // Location Section
            const Text('Địa điểm'),
            const Gap(12),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        child: ImageView(
                          assetPath: locationImage,
                          width: 100,
                          height: 100,
                        )),
                    const Gap(16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          locationName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Gap(8),
                        Text(
                          locationAddress,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            const Gap(24),

            const Text('Linh thú'),
            const Gap(12),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: SvgView(
                        assetPath: linhThuImage,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    const Gap(16),
                    Expanded(
                      child: Text(
                        linhThuName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
