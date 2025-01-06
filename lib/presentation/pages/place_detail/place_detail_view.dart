import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanoigo/foundation/extension/text_ext.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/styles/text_style.dart';
import 'package:hanoigo/presentation/widgets/svg_view.dart';
part './components/overview.dart';

class PlaceDetailView extends StatelessWidget {
  const PlaceDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = List.generate(
      3,
      (index) {
        switch (index) {
          case 0:
            return const Text('Giới thiệu');
          case 1:
            return const Text('Ảnh');
          case 2:
            return const Text('Bài đánh giá');
          default:
            return const Text('Giới thiệu');
        }
      },
    );

    final views = [
      const IntroductionTabContentView(),
      const ImageGalleryTabContentView(),
      _buildOverviewTab(),
    ];

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
                  ),
                  Expanded(
                    child: TabBarView(
                      children: views,
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

class IntroductionTabContentView extends StatelessWidget {
  const IntroductionTabContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Khuê Văn Các là một biểu tượng văn hóa đặc trưng của Hà Nội, nằm trong khuôn viên Văn Miếu - Quốc Tử Giám. '
              'Được xây dựng vào năm 1805 dưới triều đại nhà Nguyễn, Khuê Văn Các được sử dụng để tôn vinh những giá trị văn hóa, '
              'giáo dục và truyền thống học thuật của Việt Nam.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class ImageGalleryTabContentView extends StatelessWidget {
  const ImageGalleryTabContentView({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePaths = [
      Assets.images.khueVanCac.path,
      Assets.images.khueVanCac.path,
      Assets.images.khueVanCac.path,
      Assets.images.khueVanCac.path,
      Assets.images.khueVanCac.path,
      Assets.images.khueVanCac.path,
      Assets.images.khueVanCac.path,
      Assets.images.khueVanCac.path,
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePaths[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
