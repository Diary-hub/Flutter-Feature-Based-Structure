import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:kumics/utils/constants/sizes.dart';
import 'package:kumics/utils/device/device_utility.dart';
import 'package:kumics/common/widgets/simple_button.dart';

class KAnimationLoaderWidget extends StatelessWidget {
  const KAnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.animation,
      this.showAction = false,
      this.actionText,
      this.onActionPressed});

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            animation,
            width: KDeviceUtils.getScreenWidht(context) * 0.8,
          ),
          const SizedBox(height: KSizes.defaultSpace),
          text != ''
              ? Text(
                  text,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                )
              : const Text(""),
          const SizedBox(height: KSizes.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: SimpleButton(
                    onPressed: onActionPressed,
                    text: actionText!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
