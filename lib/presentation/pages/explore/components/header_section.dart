part of '../explore_view.dart';

extension HeaderSection on ExploreView {
  Widget _buildHeaderSection() {
    return Container(
      padding: const EdgeInsets.only(bottom: 46),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            color: ColorName.primaryColor,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgView(
                      assetPath: Assets.icons.logo.path,
                      width: 40,
                      height: 40,
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
                const Gap(24),
                const Text('Chào buổi sáng, Vanh!').workSan_30W800().color(Colors.white),
                const Gap(8),
                const Text('Hôm nay bạn quan tâm tới địa điểm nào?').workSan_14W400().color(Colors.white),
                const Gap(24),
              ],
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: -30,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(60)),
                border: Border.all(width: 2, color: ColorName.primaryColor),
              ),
              child: CustomTextField(
                hintText: 'Tìm kiếm tại đây...',
                suffixIcon: Icons.search,
                borderRadius: 60,
                onSubmitted: (searchText) => viewModel.toSearch(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
