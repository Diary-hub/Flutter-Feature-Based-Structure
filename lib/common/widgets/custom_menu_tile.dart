import 'package:flutter/material.dart';
import 'package:dev_uploader/utils/constants/colors.dart';

class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({
    super.key,
    this.trailing,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  final Widget? trailing;
  final IconData icon;
  final String title;
  final String subTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 60,
      borderRadius: BorderRadius.circular(48),
      onTap: onTap,
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle:
            Text(subTitle, style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 14)),
        leading: Icon(
          icon,
          color: KColors.primary,
        ),
        trailing: trailing,
      ),
    );
  }
}
