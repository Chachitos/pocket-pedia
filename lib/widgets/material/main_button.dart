import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? borderRadius;
  final Size? minimumSize;
  final EdgeInsetsGeometry? padding;
  final Widget? navigateTo;

  const MainButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.borderRadius,
    this.minimumSize,
    this.padding,
    this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    if (onPressed != null && navigateTo != null) {
      throw Exception(
          'You cannot provide both onPressed and navigateTo parameters at the same time.');
    }
    return ElevatedButton(
      onPressed: () {
        if (navigateTo != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigateTo!),
          );
        } else if (onPressed != null) {
          onPressed!();
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            backgroundColor ?? Theme.of(context).colorScheme.secondary),
        minimumSize: MaterialStateProperty.all(
            minimumSize ?? const Size(double.infinity, 50)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
          ),
        ),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize ?? 18,
            fontWeight: fontWeight ?? FontWeight.bold,
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
