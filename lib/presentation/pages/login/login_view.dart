import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hanoigo/domain/usecases/user_usecase.dart';
import 'package:hanoigo/foundation/architecture/mobx_view.dart';
import 'package:hanoigo/foundation/extension/text_ext.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/login/login_viewmodel.dart';
import 'package:hanoigo/presentation/pages/styles/text_style.dart';
import 'package:hanoigo/presentation/widgets/custom_background.dart';
import 'package:hanoigo/presentation/widgets/custom_textfield.dart';
import 'package:hanoigo/presentation/widgets/svg_view.dart';
import 'package:hanoigo/presentation/widgets/primary_button.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<UserUseCase>(UserUseCase());
    Get.put<LoginViewModel>(LoginViewModel());
  }
}

class LoginView extends MobXView<LoginViewModel> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 1),
          SvgView(assetPath: Assets.icons.logo.path, width: 200, height: 200),
          const Spacer(flex: 1),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomTextField(hintText: 'Email', suffixIcon: Icons.email),
                Gap(16),
                CustomTextField(hintText: 'Password', suffixIcon: Icons.lock),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PrimaryButton(
              title: 'Tiếp tục',
              onPressed: () async {
                viewModel.loginUser();
              },
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Thành viên mới? ").color(Colors.white),
              GestureDetector(
                onTap: () async {
                  viewModel.toSignup();
                },
                child: const Text("Đăng kí ngay").workSan_14W500().color(ColorName.secondaryColor),
              ),
            ],
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
