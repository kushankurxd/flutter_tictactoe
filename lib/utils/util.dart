import 'package:flutter/cupertino.dart';

import '../constants/constant.dart';

class Util {
  static String calculateWinner(List<List<String>> data) {
    // if Draw happens,
    bool _isDraw = true;
    for (var i = 0; i < 3; i++) {
      for (var j = 0; j < 3; j++) {
        if (data[i][j] == '') {
          _isDraw = false;
        }
      }
    }

    // Horizontal matches
    if (data[0][0] == data[0][1] &&
        data[0][1] == data[0][2] &&
        data[0][0] != '') {
      return data[0][0];
    }
    if (data[1][0] == data[1][1] &&
        data[1][1] == data[1][2] &&
        data[1][0] != '') {
      return data[1][0];
    }
    if (data[2][0] == data[2][1] &&
        data[2][1] == data[2][2] &&
        data[2][0] != '') {
      return data[2][0];
    }

    // Vertical matches
    if (data[0][0] == data[1][0] &&
        data[1][0] == data[2][0] &&
        data[0][0] != '') {
      return data[0][0];
    }
    if (data[0][1] == data[1][1] &&
        data[1][1] == data[2][1] &&
        data[0][1] != '') {
      return data[0][1];
    }
    if (data[0][2] == data[1][2] &&
        data[1][2] == data[2][2] &&
        data[0][2] != '') {
      return data[0][2];
    }

    // Diagonal matches
    if (data[0][0] == data[1][1] &&
        data[1][1] == data[2][2] &&
        data[0][0] != '') {
      return data[0][0];
    }
    if (data[0][2] == data[1][1] &&
        data[1][1] == data[2][0] &&
        data[0][2] != '') {
      return data[0][2];
    }

    if (_isDraw) {
      return 'draw';
    }
    return '';
  }

  static getBorderSide(int i, int j) {
    const double width = 2;
    const Color color = Constants.yellowColor;
    if (i == 0 && j == 0) {
      return const Border(
          right: BorderSide(width: width, color: color),
          bottom: BorderSide(width: width, color: color));
    } else if (i == 0 && j == 1) {
      return const Border(
          left: BorderSide(width: width, color: color),
          right: BorderSide(width: width, color: color),
          bottom: BorderSide(width: width, color: color));
    } else if (i == 0 && j == 2) {
      return const Border(
          left: BorderSide(width: width, color: color),
          bottom: BorderSide(width: width, color: color));
    } else if (i == 1 && j == 0) {
      return const Border(
          right: BorderSide(width: width, color: color),
          top: BorderSide(width: width, color: color),
          bottom: BorderSide(width: width, color: color));
    } else if (i == 1 && j == 1) {
      return const Border(
          top: BorderSide(width: width, color: color),
          left: BorderSide(width: width, color: color),
          right: BorderSide(width: width, color: color),
          bottom: BorderSide(width: width, color: color));
    } else if (i == 1 && j == 2) {
      return const Border(
          top: BorderSide(width: width, color: color),
          left: BorderSide(width: width, color: color),
          bottom: BorderSide(width: width, color: color));
    } else if (i == 2 && j == 0) {
      return const Border(
          right: BorderSide(width: width, color: color),
          top: BorderSide(width: width, color: color));
    } else if (i == 2 && j == 1) {
      return const Border(
          right: BorderSide(width: width, color: color),
          left: BorderSide(width: width, color: color),
          top: BorderSide(width: width, color: color));
    } else {
      return const Border(
          left: BorderSide(width: width, color: color),
          top: BorderSide(width: width, color: color));
    }
  }
}
