import 'package:eduapp/utils/colors.dart';
import 'package:flutter/material.dart';

class EducationAppMainScreen extends StatefulWidget {
  const EducationAppMainScreen({super.key});

  @override
  State<EducationAppMainScreen> createState() => _EducationAppMainScreenState();
}

class _EducationAppMainScreenState extends State<EducationAppMainScreen> {
  int selectIndex = 0;
  static const List<Widget> _selectPage = <Widget>[
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),

  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor1,
          iconSize: 26,
          backgroundColor: Colors.white,
          elevation: 0,
          items: const[
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.star),
              icon: Icon(Icons.star_border),
              label: "Featured",
            ),
                        BottomNavigationBarItem(
              activeIcon: Icon(Icons.play_circle),
              icon: Icon(Icons.play_circle_outline),
              label: "Learning",
            ),
                        BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite_border),
              label: "wishlist",
            ),
               BottomNavigationBarItem(
              activeIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings_outlined),
              label: "setting",
            ),
          ],
          currentIndex: selectIndex,
          onTap: (int index) {
            setState(() {
              selectIndex = index;
            });
          },
          ),
    );
  }
}