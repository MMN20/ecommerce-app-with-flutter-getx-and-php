import 'package:flutter/material.dart';
import 'package:my_eccommerce_user/core/colors.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton(
      {super.key, required this.onPressed, required this.child, this.minSize});
  final void Function() onPressed;
  final Widget child;
  final Size? minSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(10),
          minimumSize: minSize,
          backgroundColor: AppColors.thirdColor10,
          foregroundColor: AppColors.secondColor30,
          textStyle: const TextStyle(fontSize: 15)),
      child: child,
    );
  }
}
