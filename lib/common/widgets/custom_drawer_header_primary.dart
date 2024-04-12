import 'package:flutter/material.dart';
import 'package:kumics/utils/constants/colors.dart';
import 'package:kumics/utils/constants/images.dart';
import 'package:kumics/utils/constants/texts.dart';

class CustomDrawerHeaderPrimary extends StatelessWidget {
  const CustomDrawerHeaderPrimary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          fit: BoxFit.fill,
          image: AssetImage(KImages.appLogo),
          width: 120,
        ),
        Text(
          "کومیکس©",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: KColors.primary),
        ),
        Text(
          KTexts.aboutApp,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    ));
  }
}
