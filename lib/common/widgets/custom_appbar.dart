import 'package:dev_uploader/utils/constants/colors.dart';
import 'package:dev_uploader/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.live_tv)),
          const SizedBox(width: 30),
          TextButton(
            onPressed: () {},
            child: Text("Explore", style: Theme.of(context).textTheme.bodySmall),
          ),
          TextButton(
              onPressed: () {},
              child: Text("Following", style: Theme.of(context).textTheme.bodySmall)),
          TextButton(
              onPressed: () {},
              child: Text("For You",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: KColors.white))),
          const SizedBox(width: 30),
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.search_normal)),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(KDeviceUtils.getAppBarHeight());
}
