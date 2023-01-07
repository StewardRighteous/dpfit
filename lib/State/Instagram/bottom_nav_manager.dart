import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import '../../UI/Pages/Instagram/instagram.dart';

class BottomNavManager extends ChangeNotifier {
  int selectedIndex = 0;

  List<Widget> pages = const [
    IHome(),
    ISearch(),
    IReels(),
    IActivity(),
    IProfile(),
  ];

  updateSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  get index => selectedIndex;
}
