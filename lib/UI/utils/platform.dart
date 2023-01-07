import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Platform extends StatelessWidget {
  final Text platformName;
  final String platformMessage;
  final Image logos;
  final int appNumber;
  final Map apps = {
    1: '/instagram',
    2: 'whatsapp',
    3: 'youtube',
    4: 'telegram',
    5: 'snapchat',
    6: 'reddit',
    7: 'pinterest'
  };

  Platform(
      {super.key,
      required this.platformName,
      required this.platformMessage,
      required this.logos,
      required this.appNumber});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.go(apps[appNumber]),
      title: platformName,
      contentPadding: const EdgeInsets.only(left: 25.0, top: 10.0),
      leading: logos,
      style: ListTileStyle.drawer,
      subtitle: Text(platformMessage),
      dense: true,
    );
  }
}
