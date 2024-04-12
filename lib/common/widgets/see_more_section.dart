import 'package:flutter/material.dart';
import 'package:kumics/utils/constants/colors.dart';
import 'package:kumics/utils/constants/sizes.dart';

class SeeMoreSection extends StatelessWidget {
  const SeeMoreSection({
    super.key,
    required this.title,
    required this.subTitle,
    this.titleStyle,
    this.subTitleStyle,
    this.showButton = true,
    this.showMore = true,
  });

  final String title;
  final String subTitle;
  final TextStyle? titleStyle;
  final TextStyle? subTitleStyle;
  final bool showButton;
  final bool showMore;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KSizes.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle ?? Theme.of(context).textTheme.headlineSmall,
          ),
          Row(
            children: [
              Text(
                overflow: TextOverflow.ellipsis,
                subTitle,
                style: subTitleStyle ??
                    Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.grey),
              ),
              showButton
                  ? Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(10),
                            splashColor: KColors.primary.withOpacity(0.1),
                            onTap: () {},
                            child: Row(
                              children: [
                                Text(
                                  overflow: TextOverflow.ellipsis,
                                  showMore ? "   زیاتر" : "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: KSizes.xs + 5,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  : const Row()
            ],
          ),
        ],
      ),
    );
  }
}
