import 'package:dpfit/State/Instagram/bottom_nav_manager.dart';

import 'package:dpfit/UI/Pages/Instagram/utils/insta_logos.dart';
import 'package:profilepicture/profilepicture.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InstagramBottomNavigationBar extends StatelessWidget {
  const InstagramBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavManager>(
      builder: (context, nav, child) {
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: nav.selectedIndex,
          onTap: nav.updateSelectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: (nav.index == 0)
                  ? const SizedBox(
                      height: 40,
                      width: 40,
                      child: InstaLogos.dhome,
                    )
                  : const SizedBox(
                      height: 40,
                      width: 40,
                      child: InstaLogos.lhome,
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: (nav.index == 1)
                  ? const SizedBox(
                      height: 30,
                      width: 30,
                      child: InstaLogos.dsearch,
                    )
                  : const SizedBox(
                      height: 40,
                      width: 40,
                      child: InstaLogos.lsearch,
                    ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: (nav.index == 2)
                  ? const SizedBox(
                      height: 30,
                      width: 30,
                      child: InstaLogos.dreels,
                    )
                  : const SizedBox(
                      height: 30,
                      width: 30,
                      child: InstaLogos.lreels,
                    ),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: (nav.index == 3)
                  ? const SizedBox(
                      height: 40,
                      width: 40,
                      child: InstaLogos.dheart,
                    )
                  : const SizedBox(
                      height: 40,
                      width: 40,
                      child: InstaLogos.lheart,
                    ),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: (nav.index == 4)
                  ? Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                      child: const ProfilePicture(
                        radius: 15,
                      ),
                    )
                  : const ProfilePicture(radius: 15),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
