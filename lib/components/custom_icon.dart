import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {@required this.backColor,
      @required this.onPressed,
      @required this.cosIcon,
      @required this.iconColor,
      this.size,
      required this.circul,
      this.bordering});
  final Color? backColor;
  final IconData? cosIcon;
  final VoidCallback? onPressed;
  final BoxBorder? bordering;
  final Color? iconColor;
  final double circul;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(17),
        decoration: BoxDecoration(
          border: bordering,
          borderRadius: BorderRadius.all(Radius.circular(circul)),
          color: backColor,
        ),
        child: Icon(
          cosIcon,
          color: iconColor,
          size: size,
        ),
      ),
    );
  }
}
