import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

class PageBNested extends StatelessWidget {
  const PageBNested({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        AutoRouter.of(context).navigateBack();
        return false;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              AutoRouter.of(context).navigateBack();
            },
            child: Text('PAGE B nested'),
          ),
        ],
      ),
    );
  }
}
