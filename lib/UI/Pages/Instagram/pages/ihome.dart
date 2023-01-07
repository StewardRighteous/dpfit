import 'package:dpfit/UI/Pages/Instagram/instagram.dart';
import 'package:flutter/material.dart';

class IHome extends StatelessWidget {
  const IHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: const InstagramAppBar()),
        body: const InstagramHomeBody(),
      ),
    );
  }
}
