import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanoigo/foundation/extension/text_ext.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/presentation/pages/styles/text_style.dart';
import 'package:hanoigo/presentation/widgets/custom_background.dart';
import 'package:hanoigo/presentation/widgets/primary_button.dart';
import 'package:hanoigo/presentation/widgets/secondary_button.dart';
import 'package:hanoigo/presentation/widgets/svg_view.dart';

class PermissionView extends StatelessWidget {
  const PermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 1),
          Expanded(
            flex: 5,
            child: SvgView(
              assetPath: Assets.icons.logo.path,
              height: 200,
              width: 200,
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Text('Cấp quyền truy cập').workSan_30W800().color(Colors.white).center(),
                const Gap(24),
                const Text(
                  'HANOIGO sẽ sử dụng camera và định vị của thiết bị cho một số chức năng quan trọng',
                ).workSan_16W400().center().color(Colors.white),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PrimaryButton(
              title: "Tiếp tục",
              onPressed: () {},
            ),
          ),
          const Gap(24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SecondaryButton(
              title: "Từ chối yêu cầu",
              onPressed: () {},
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
