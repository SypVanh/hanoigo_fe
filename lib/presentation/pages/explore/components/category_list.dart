part of '../explore_view.dart';

extension CategoryList on ExploreView {
  Widget _buildCategoryList() {
    final categories = ['Di tích', 'Văn hóa', 'Lịch sử', 'Kiến trúc', 'Tôn giáo'];
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const Gap(8),
        itemBuilder: (context, index) {
          return Chip(
            label: Text(categories[index]).workSan_10W600().color(ColorName.primaryColor),
            backgroundColor: ColorName.primaryColor.withOpacity(0.1),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              side: BorderSide(color: ColorName.primaryColor.withOpacity(0.1)),
            ),
          );
        },
      ),
    );
  }
}
