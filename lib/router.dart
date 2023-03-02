import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:bottom_bar_test/main_page.dart';
import 'package:bottom_bar_test/page_a.dart';
import 'package:bottom_bar_test/page_b.dart';
import 'package:bottom_bar_test/page_b_nested.dart';
import 'package:bottom_bar_test/page_c.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainPage,
      initial: true,
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          name: 'TabA',
          initial: true,
          maintainState: true,
          path: 'A',
          children: [
            AutoRoute(
              initial: true,
              page: PageA,
            ),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'TabB',
          maintainState: true,
          path: 'B',
          children: [
            AutoRoute(
              initial: true,
              page: PageB,
            ),
            AutoRoute(
              page: PageBNested,
            ),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'TabC',
          maintainState: true,
          path: 'C',
          children: [
            AutoRoute(
              initial: true,
              page: PageC,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
