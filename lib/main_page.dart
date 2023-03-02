import 'package:auto_route/auto_route.dart';
import 'package:bottom_bar_test/router.gr.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        TabA(),
        TabB(),
        TabC(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(icon: Text('A'), label: 'A'),
            BottomNavigationBarItem(icon: Text('B'), label: 'B'),
            BottomNavigationBarItem(icon: Text('C'), label: 'C'),
          ],
        );
      },
    );
  }
}
