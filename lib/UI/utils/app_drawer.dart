import 'package:flutter/material.dart';
import '../ui.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            padding: const EdgeInsets.all(8.0),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/AppLogo/logo.png'),
            ),
          ),
          const Divider(),
          Platform(
            platformName: const Text('Instagram'),
            platformMessage: 'See your DP in Instagram',
            logos: Logos.instagram,
            appNumber: 1,
          ),
          Platform(
            platformName: const Text('WhatsApp'),
            platformMessage: 'Available in Future',
            logos: Logos.whatsapp,
            appNumber: 2,
          ),
          Platform(
            platformName: const Text('YouTube'),
            platformMessage: 'Available in Future',
            logos: Logos.youtube,
            appNumber: 3,
          ),
          Platform(
            platformName: const Text('Telegram'),
            platformMessage: 'Available in Future',
            logos: Logos.telegram,
            appNumber: 4,
          ),
          Platform(
            platformName: const Text('Snapchat'),
            platformMessage: 'Available in Future',
            logos: Logos.snapchat,
            appNumber: 5,
          ),
          Platform(
            platformName: const Text('Reddit'),
            platformMessage: 'Available in Future',
            logos: Logos.reddit,
            appNumber: 6,
          ),
          Platform(
            platformName: const Text('Pinterest'),
            platformMessage: 'Available in Future',
            logos: Logos.pinterest,
            appNumber: 7,
          ),
        ],
      ),
    );
  }
}
