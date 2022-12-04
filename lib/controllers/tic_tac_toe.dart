import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';
import '../utils/util.dart';
import '../widgets/button.dart';

class TicTacToeController extends GetxController {
  final RxString currentDisplayElement = 'X'.obs;
  final RxList<List<String>> data = [
    ['', '', ''],
    ['', '', ''],
    ['', '', '']
  ].obs;
  final RxInt xScore = 0.obs;
  final RxInt yScore = 0.obs;
  final RxBool stopInteraction = false.obs;

  // functions
  // Open dialog if anyone won game
  void openGetXDialog(String displayElement) {
    Get.defaultDialog(
        title: displayElement == 'draw'
            ? "''DRAW''"
            : "''$displayElement'' won !!",
        middleText: Constants.dialogMiddleText,
        backgroundColor: Constants.backgroundColor,
        titleStyle: const TextStyle(
            color: Constants.whiteColor,
            fontFamily: Constants.fontFamily,
            fontWeight: FontWeight.w600),
        middleTextStyle: const TextStyle(
            color: Constants.whiteColor, fontFamily: Constants.fontFamily),
        confirm: ButtonWidget(
            width: 140,
            height: 40,
            onPressed: () {
              onResetClick();
              Get.back(closeOverlays: true);
            },
            text: Constants.resetButtonText),
        barrierDismissible: false,
        radius: 8);
  }

  // when user clicks on block
  void onUserClick(int i, int j) {
    if (data[i][j] != '') return;
    data[i][j] = currentDisplayElement.value;
    if (currentDisplayElement.value == 'X') {
      currentDisplayElement.value = 'O';
    } else {
      currentDisplayElement.value = 'X';
    }
    String winner = Util.calculateWinner(data);
    if (winner == 'X') {
      xScore.value = xScore.value + 1;
      stopInteraction.value = true;
      openGetXDialog(winner);
    } else if (winner == 'O') {
      yScore.value = yScore.value + 1;
      stopInteraction.value = true;
      openGetXDialog(winner);
    } else if (winner == 'draw') {
      openGetXDialog(winner);
    }
    update();
  }

  // when new game is clicked
  void onNewGameClick() {
    data.value = [
      ['', '', ''],
      ['', '', ''],
      ['', '', '']
    ];
    xScore.value = 0;
    yScore.value = 0;
    currentDisplayElement.value = 'X';
    stopInteraction.value = false;
    update();
  }

  // when reset game is clicked
  void onResetClick() {
    data.value = [
      ['', '', ''],
      ['', '', ''],
      ['', '', '']
    ];
    currentDisplayElement.value = 'X';
    stopInteraction.value = false;
    update();
  }
}
