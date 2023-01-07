import 'Navigation/navigate_route.dart';
import 'State/state.dart';
import 'package:flutter/material.dart';
import 'package:profilepicture/profilepicture.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ThemeManager(),
          ),
          ChangeNotifierProvider(
            create: (context) => DpGetter(),
          )
        ],
        child: Consumer<ThemeManager>(builder: ((context, theme, child) {
          return MaterialApp.router(
            routerConfig: NavigateRoute.router,
            theme: theme.getTheme(),
            debugShowCheckedModeBanner: false,
          );
        })));
  }
}
