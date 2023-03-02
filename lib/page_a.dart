import 'package:auto_route/auto_route.dart';
import 'package:bottom_bar_test/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).navigate(
              MainRoute(
                children: [
                  TabB(children: [
                    RouteBNested(),
                  ])
                ],
              ),
            );
          },
          child: Container(
            color: Colors.red,
            child: Text('PAGE A'),
          ),
        ),
      ],
    );
  }
}
