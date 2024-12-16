import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hanoigo/domain/usecases/auth_usecase.dart';
import 'package:hanoigo/foundation/architecture/mobx_view.dart';
import 'package:hanoigo/foundation/extension/text_ext.dart';
import 'package:hanoigo/presentation/pages/onboarding/onboarding_viewmodel.dart';
import 'package:hanoigo/presentation/pages/styles/text_style.dart';
import 'package:hanoigo/presentation/widgets/custom_background.dart';
import 'package:hanoigo/presentation/widgets/svg_view.dart';
import 'package:hanoigo/presentation/widgets/primary_button.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../generated/assets.gen.dart';
part 'about_app_view.dart';

class OnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthUseCase>(AuthUseCase());
    Get.put<OnboardingViewModel>(OnboardingViewModel());
  }
}

class OnboardingView extends MobXView<OnboardingViewModel> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Observer(builder: (context) {
        return viewModel.isLoading
            ? SvgView(
                assetPath: Assets.icons.logo.path,
                height: 200,
                width: 200,
              )
            : _buildAboutAppView();
      }),
    );
  }
}
