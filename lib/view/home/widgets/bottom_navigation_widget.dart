import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitaktest/utilities/colors/colors.dart';
import 'package:jiitaktest/view/home/home_screen.dart';
import 'package:jiitaktest/view/search/search_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  List<PersistentTabConfig> tabs() => [
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const Icon(
              CupertinoIcons.search,
            ),
            title: "Search",
            activeForegroundColor: const Color.fromARGB(255, 244, 197, 67),
          ),
        ),
        PersistentTabConfig(
          screen: const SearchScreen(),
          item: ItemConfig(
            icon: const Icon(
              EvaIcons.briefcaseOutline,
            ),
            title: "Jobs",
            activeForegroundColor: const Color.fromARGB(255, 244, 197, 67),
          ),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const Icon(
              CupertinoIcons.qrcode_viewfinder,
              color: whiteColor,
            ),
            title: "Scan",
            inactiveBackgroundColor: const Color.fromARGB(255, 244, 197, 67),
          ),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const Icon(
              CupertinoIcons.chat_bubble_text,
            ),
            title: "Chat",
            activeForegroundColor: const Color.fromARGB(255, 244, 197, 67),
          ),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const Icon(
              CupertinoIcons.person_fill,
            ),
            title: "Profile",
            activeForegroundColor: const Color.fromARGB(255, 244, 197, 67),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
        tabs: tabs(),
        navBarBuilder: (navBarConfig) => Style13BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      );
}
