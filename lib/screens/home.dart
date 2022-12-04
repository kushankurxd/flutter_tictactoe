import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:warm_up/widgets/button.dart';
import 'package:warm_up/widgets/cubes.dart';

import '../constants/constant.dart';
import '../controllers/tic_tac_toe.dart';
import '../layout/layout.dart';
import '../widgets/scoreboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TicTacToeController ticTacToeController =
      Get.put(TicTacToeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicTacToeController>(builder: (_) {
      return CustomLayout(
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: ScoreboardWidget(
                  xScore: ticTacToeController.xScore,
                  yScore: ticTacToeController.yScore,
                ),
              ),
              for (var i = 0; i < 3; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var j = 0; j < 3; j++)
                      GestureDetector(
                          onTap: () {
                            ticTacToeController.onUserClick(i, j);
                          },
                          child: CubesWidget(
                            i: i,
                            j: j,
                            displayElement: ticTacToeController.data[i][j],
                          ))
                  ],
                ),
              Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ButtonWidget(
                      onPressed: () => {ticTacToeController.onNewGameClick()},
                      text: Constants.newGameText)),
              Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ButtonWidget(
                      onPressed: () => {ticTacToeController.onResetClick()},
                      text: Constants.resetGameText))
            ],
          ),
        ),
      );
    });
  }
}
