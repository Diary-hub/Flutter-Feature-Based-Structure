import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kumics/common/widgets/loader/loader.dart';
import 'package:kumics/utils/constants/colors.dart';
import 'package:kumics/utils/device/device_utility.dart';

class KFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: KColors.backgroundColorPrimary,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: KDeviceUtils.getScreenHeight() * 0.03),
              KAnimationLoaderWidget(
                text: text,
                animation: animation,
              )
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
