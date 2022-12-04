import 'package:flutter/material.dart';
import 'package:warm_up/constants/constant.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? width;
  final double? height;
  const ButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 300,
      height: height ?? 50,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Constants.buttonColor),
            foregroundColor: MaterialStateProperty.all(Constants.whiteColor)),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
              fontFamily: Constants.fontFamily,
              fontWeight: FontWeight.w500,
              letterSpacing: 1),
        ),
      ),
    );
  }
}
