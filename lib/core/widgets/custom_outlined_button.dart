import 'package:flutter/material.dart';

import 'package:ecommerce/core/sizes.dart';
import 'package:ecommerce/core/style/colors.dart';
import 'package:ecommerce/core/style/text_styles.dart';

class CustomOutlinedButton extends StatefulWidget {
  const CustomOutlinedButton({
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
  State<CustomOutlinedButton> createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends State<CustomOutlinedButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: shortestSide(context) * (widget.widthFactor ?? 0.3),
        height: shortestSide(context) * (widget.heightFactor ?? 0.1),
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(borderRaduis),
        ),
        child: Center(
          child: Text(
            widget.label,
            style: outlinedButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
