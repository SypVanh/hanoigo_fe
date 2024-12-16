import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanoigo/foundation/extension/text_ext.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/styles/text_style.dart';
import 'package:hanoigo/presentation/widgets/svg_view.dart';

class PlaceDetailView extends StatelessWidget {
  const PlaceDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = List.generate(
      4, // You can change this to create more tabs.
      (index) {
        switch (index) {
          case 0:
            return const Text('Tổng quan');
          case 1:
            return const Text('Giới thiệu');
          case 2:
            return const Text('Ảnh');
          case 3:
            return const Text('Bài đánh giá');
          default:
            return const Text('Tổng quan');
        }
      },
    );

    final views = List.generate(
      4,
      (index) => TabContentView(index: index), // Use your complex widgets here.
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Khuê Văn Các - Văn Miếu \n 58 P. Quốc Tử Giám, Văn Miếu, Quận Đống Đa',
          style: TextStyle(fontSize: 14),
        ).center(),
      ),
      body: Column(
        children: [
          Image.asset(Assets.images.khueVanCac.path, width: 130, height: 130),
          const Gap(8),
          Expanded(
            child: DefaultTabController(
              length: tabs.length,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    indicatorColor: ColorName.primaryColor,
                    unselectedLabelStyle: const Text('').workSan_14W500().color(ColorName.textHintColor).style,
                    labelStyle: const Text('').workSan_14W500().color(ColorName.primaryColor).style,
                    tabs: tabs,
                    // Remove indicator padding
                  ),
                  Expanded(
                    child: TabBarView(
                      children: views, // Display corresponding views for each tab.
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Example of a complex widget for each tab's content.
class TabContentView extends StatelessWidget {
  final int index;

  const TabContentView({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgView(assetPath: Assets.icons.logo.path, width: 130, height: 130),
            SvgView(assetPath: Assets.icons.logo.path, width: 130, height: 130),
            SvgView(assetPath: Assets.icons.logo.path, width: 130, height: 130),
            SvgView(assetPath: Assets.icons.logo.path, width: 130, height: 130),
            Text(
              'Tab $index Content',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'This is a detailed view for Tab $index. You can replace this '
              'with any complex widget tree as needed.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                debugPrint('Button clicked on Tab $index');
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
