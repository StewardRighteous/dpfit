import '../../State/state.dart';
import '../ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:profilepicture/profilepicture.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String _appTitle = 'Dp Fit';

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(
      builder: ((context, theme, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: Text(_appTitle),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: IconButton(
                    icon: (theme.isDark())
                        ? const Icon(Icons.light_mode)
                        : const Icon(Icons.dark_mode),
                    onPressed: () =>
                        Provider.of<ThemeManager>(context, listen: false)
                            .changeTheme(),
                  ),
                )
              ],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const AccessSelector();
                        },
                      );
                    },
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          width: 350,
                          height: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            shape: BoxShape.rectangle,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const Positioned(
                          top: 50.0,
                          child: ProfilePicture(radius: 100),
                        ),
                        const Positioned(
                            right: 105.0,
                            bottom: 110.0,
                            child: Icon(Icons.add_a_photo_rounded)),
                        Positioned(
                            bottom: 50.0,
                            child: Consumer<DpGetter>(
                              builder: (context, dp, child) {
                                if (dp.checkDp()) {
                                  return ElevatedButton(
                                      onPressed: () =>
                                          Scaffold.of(context).openDrawer(),
                                      child: const Text('Check Your Dp'));
                                } else {
                                  return Text(
                                    'UPLOAD YOUR IMAGE HERE!',
                                    style: GoogleFonts.openSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  );
                                }
                              },
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            drawer: const AppDrawer(),
          ),
        );
      }),
    );
  }
}
