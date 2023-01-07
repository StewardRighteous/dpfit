part of profilepicture;

class ProfilePicture extends StatelessWidget {
  final double radius;
  const ProfilePicture({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Consumer<DpGetter>(builder: ((context, dp, child) {
      if (dp.checkDp()) {
        return CircleAvatar(
          backgroundImage: MemoryImage(dp.getImage()),
          radius: radius,
        );
      } else {
        return CircleAvatar(
          backgroundImage: const AssetImage('assets/AppLogo/nologo.png'),
          radius: radius,
        );
      }
    }));
  }
}
