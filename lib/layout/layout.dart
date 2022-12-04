import 'package:flutter/material.dart';
import 'package:warm_up/constants/constant.dart';

import '../widgets/app_footer.dart';
import '../widgets/appbar.dart';

class CustomLayout extends StatelessWidget {
  final Widget child;

  const CustomLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Constants.backgroundColor,
          child: Column(
            children: [
              const AppBarWidget(),
              child,
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: AppFooterWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
