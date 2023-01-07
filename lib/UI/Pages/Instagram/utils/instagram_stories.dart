import 'package:flutter/material.dart';
import 'package:profilepicture/profilepicture.dart';

class InstagramStories extends StatelessWidget {
  final String text;
  final bool main;
  const InstagramStories({super.key, required this.text, this.main = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (main == false)
            ? Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, top: 10.0, bottom: 5.0, right: 5.0),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade400,
                  ),
                ),
              )
            : const Padding(
                padding: EdgeInsets.only(
                    left: 15.0, top: 10.0, bottom: 5.0, right: 5.0),
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: ProfilePicture(radius: 15),
                ),
              ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 5.0),
          child: SizedBox(
            width: 50,
            height: 50,
            child: Text(
              text,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 10.0),
            ),
          ),
        ),
      ],
    );
  }
}
