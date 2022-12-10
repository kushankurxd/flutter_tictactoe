import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:warm_up/constants/constant.dart';

import '../utils/config.dart';

class ScoreboardWidget extends StatelessWidget {
  final RxInt xScore;
  final RxInt yScore;
  const ScoreboardWidget({Key? key, required this.xScore, required this.yScore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$xScore',
          style: const TextStyle(
              color: Constants.whiteColor,
              fontSize: 56,
              fontFamily: Constants.fontFamily,
              fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal * 4),
          child: const Text(
            Constants.semiColon,
            style: TextStyle(
                color: Constants.yellowColor,
                fontSize: 46,
                fontFamily: Constants.fontFamily,
                height: 1,
                fontWeight: FontWeight.w500),
          ),
        ),
        Text(
          '$yScore',
          style: const TextStyle(
              color: Constants.accentColor,
              fontSize: 56,
              fontFamily: Constants.fontFamily,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
