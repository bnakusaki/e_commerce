import 'package:ecommerce/core/sizes.dart';
import 'package:ecommerce/core/style/colors.dart';
import 'package:ecommerce/core/style/text_styles.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatefulWidget {
  const CustomFilledButton({
    super.key,
    required this.label,
    this.widthFactor,
    this.heightFactor,
    required this.onTap,
  });
  final String label;
  final double? widthFactor;
  final double? heightFactor;
  final Function() onTap;

  @override
  State<CustomFilledButton> createState() => _CustomFilledButtonState();
}

class _CustomFilledButtonState extends State<CustomFilledButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: shortestSide(context) * (widget.widthFactor ?? 0.3),
        height: shortestSide(context) * (widget.heightFactor ?? 0.1),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(borderRaduis),
        ),
        child: Center(
          child: Text(
            widget.label,
            style: filledButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
