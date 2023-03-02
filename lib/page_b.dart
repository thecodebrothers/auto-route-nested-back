import 'package:auto_route/auto_route.dart';
import 'package:bottom_bar_test/page_b_nested.dart';
import 'package:bottom_bar_test/router.gr.dart';
import 'package:flutter/cupertino.dart';

class PageB extends StatelessWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).navigate(RouteBNested());
          },
          child: Text('PAGE B'),
        ),
      ],
    );
  }
}
