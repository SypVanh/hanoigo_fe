part of 'onboarding_view.dart';

extension AboutAppView on OnboardingView {
  Widget _buildAboutAppView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(flex: 1),
        Expanded(
          flex: 5,
          child: SvgView(
            assetPath: Assets.icons.dragon.path,
            height: 250,
            width: 250,
          ),
        ),
        const Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Text('Xin chào!').workSan_40W800().color(Colors.white),
              const Gap(10),
              const Text(
                'Vui lòng đăng nhập để cá nhân hóa trải nghiệm người dùng cùng HANOIGO',
              ).workSan_16W400().center().color(Colors.white),
            ],
          ),
        ),
        const Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: PrimaryButton(
            title: "Tiếp tục",
            onPressed: () async {
              viewModel.toLogin();
            },
          ),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
