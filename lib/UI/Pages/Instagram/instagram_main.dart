import 'package:dpfit/State/Instagram/bottom_nav_manager.dart';
import 'package:provider/provider.dart';
import 'instagram.dart';
import 'package:flutter/material.dart';

class InstagramMain extends StatelessWidget {
  const InstagramMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => BottomNavManager(),
          )
        ],
        child: Consumer<BottomNavManager>(
          builder: (context, page, child) {
            return SafeArea(
              child: Scaffold(
                  body: page.pages[page.selectedIndex],
                  bottomNavigationBar: const InstagramBottomNavigationBar()),
            );
          },
        ));
  }
}
