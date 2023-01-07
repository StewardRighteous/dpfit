import 'package:dpfit/UI/Pages/Instagram/utils/instagram_stories.dart';
import 'package:flutter/material.dart';

class InstagramHomeBody extends StatelessWidget {
  final text = 'stewardrighteous';
  const InstagramHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(children: [
                InstagramStories(text: text, main: true),
                const InstagramStories(text: 'steve'),
                const InstagramStories(text: 'raj__9'),
                const InstagramStories(text: 'never_lie'),
                const InstagramStories(text: 'uzumaki_naruto'),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
