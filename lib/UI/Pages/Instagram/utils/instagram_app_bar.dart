import 'package:flutter/material.dart';
import '../instagram.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../State/state.dart';

class InstagramAppBar extends StatelessWidget {
  const InstagramAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(
      builder: (context, theme, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 90,
              width: 125,
              padding: const EdgeInsets.only(left: 3, top: 9),
              child: SvgPicture.asset(
                'assets/AppIcons/Instagram/ic_instagram.svg',
                color: (theme.isDark() == true) ? Colors.white : Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: (theme.isDark() == true)
                              ? Colors.white
                              : Colors.black,
                        )),
                        child: Icon(
                          Icons.add,
                          color: (theme.isDark() == true)
                              ? Colors.white
                              : Colors.black,
                        ))),
                const Padding(padding: EdgeInsets.all(4.0)),
                (theme.isDark() == true)
                    ? const SizedBox(
                        height: 30, width: 30, child: InstaLogos.lmessenger)
                    : const SizedBox(
                        height: 30, width: 30, child: InstaLogos.dmessenger)
              ],
            ),
          ],
        );
      },
    );
  }
}
