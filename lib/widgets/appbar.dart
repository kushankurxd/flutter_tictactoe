import 'package:flutter/cupertino.dart';

import '../constants/constant.dart';
import '../utils/config.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 6),
        child: Column(
          children: [
            const Text(Constants.appTitle,
                style: TextStyle(
                    color: Constants.whiteColor,
                    fontSize: 36,
                    height: 0.1,
                    fontFamily: Constants.fontFamily,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  56,
                  (_) => const Text(
                        '.',
                        style: TextStyle(
                            color: Constants.yellowColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: Constants.fontFamily,
                            letterSpacing: 1),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
