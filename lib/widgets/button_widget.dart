import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Function() onTap;
  final String title;
  final Color? titleColor;
  final Color? backgroundColor;

  const ButtonWidget({
    super.key,
    required this.onTap,
    required this.title,
    this.titleColor,
    this.backgroundColor,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Ink(
        height: height ?? 52,
        width: width ?? MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.black,
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 4),
              blurRadius: 3,
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: titleColor ?? Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
