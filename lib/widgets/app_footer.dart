import 'package:flutter/cupertino.dart';
import 'package:warm_up/constants/constant.dart';

class AppFooterWidget extends StatelessWidget {
  const AppFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      Constants.versionNumber,
      style: TextStyle(
          color: Constants.whiteColor,
          fontFamily: Constants.fontFamily,
          fontSize: 12),
    );
  }
}
