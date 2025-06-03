import 'package:flutter/material.dart';
import 'package:flutter_til_web/utils/constants/colors.dart';
import 'package:flutter_til_web/utils/constants/sizes.dart';
import 'package:flutter_til_web/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class THeader extends StatelessWidget implements PreferredSizeWidget {
  const THeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColors.white,
        border: Border(bottom: BorderSide(color: TColors.grey, width: 1)),
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.md, vertical: TSizes.sm),
      child: AppBar(
        // Mobile Menu
        leading: !TDeviceUtils.isDesktopScreen(context)
            ? IconButton(onPressed: () {}, icon: const Icon(Iconsax.menu))
            : null,

        // Search Field
        title: TDeviceUtils.isDesktopScreen(context)
            ? SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.search_normal),
                      hintText: 'search anything...'),
                ),
              )
            : null,
        // Actions
        actions: [
          if (!TDeviceUtils.isDesktopScreen(context))
            IconButton(
              icon: Icon(Iconsax.search_normal),
              onPressed: () {},
            ),
          IconButton(
            icon: Icon(Iconsax.notification),
            onPressed: () {},
          ),
          const SizedBox(width: TSizes.spaceBtwItems / 2),

          // Uaer Data
          Row(
            children: [],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(TDeviceUtils.getAppBarHeight() + 15);
}
