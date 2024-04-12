import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:kumics/utils/constants/sizes.dart';
import 'package:kumics/utils/constants/colors.dart';
import 'package:kumics/utils/constants/images.dart';
import 'package:kumics/common/widgets/simple_button.dart';
import 'package:kumics/common/widgets/custom_drawer_header_primary.dart';
import 'package:kumics/data/repositories/authentication/authentication_repository.dart';
import 'package:kumics/featuers/personalization/screens/settings/widgets/custom_menu_tile.dart';

class CustomDrawerPrimary extends StatelessWidget {
  const CustomDrawerPrimary({
    super.key,
    required this.sH,
  });

  final double sH;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      backgroundColor: KColors.backgroundColorPrimary,
      child: ListView(
        children: [
          SizedBox(
            height: sH * 0.37,
            child: const CustomDrawerHeaderPrimary(),
          ),
          ProfileMenuTile(
            onTap: () {},
            icon: Iconsax.document_download5,
            title: "هەڵگیراوەکان",
            subTitle: "بینینی کۆمیکە داگیراوەکان",
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ProfileMenuTile(
            onTap: () {},
            icon: Icons.star,
            title: "هەڵسەنگاندن",
            subTitle: "ئەپەکەمان هەڵبسەنگێنە",
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ProfileMenuTile(
            onTap: () {},
            icon: Icons.web,
            title: "پێگەکەمان",
            subTitle: "پێگەکەی فەڕمی کومیکس",
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ProfileMenuTile(
            onTap: () {},
            icon: Icons.share,
            title: "بڵاوکردنەوە",
            subTitle: "هاوڕێکانت بێبەش مەکە",
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SimpleButton(
                  backgroundColor: KColors.error,
                  width: 0.4,
                  height: 0.06,
                  onPressed: () => AuthenticationRepository.instance.logout(),
                  text: "چوونەدەرەوە",
                  style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
          SizedBox(height: sH * 0.02),
          const Divider(),
          const SizedBox(height: KSizes.defaultSpace - 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(16),
                radius: 15,
                onTap: () {},
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(KImages.igLogo),
                    ),
                    SizedBox(height: sH * 0.01),
                    const Text("Instagram")
                  ],
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(16),
                radius: 15,
                onTap: () {},
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(KImages.fbLogo),
                    ),
                    SizedBox(height: sH * 0.01),
                    const Text("Facebook")
                  ],
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(16),
                radius: 15,
                onTap: () {},
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(KImages.xLogo),
                    ),
                    SizedBox(height: sH * 0.01),
                    const Text("X")
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: KSizes.defaultSpace),
        ],
      ),
    );
  }
}
