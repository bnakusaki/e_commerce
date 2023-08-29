import 'package:ecommerce/core/sizes.dart';
import 'package:ecommerce/core/style/colors.dart';
import 'package:ecommerce/core/style/text_styles.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatefulWidget {
  const CustomFilledButton({super.key, required this.label, this.widthFactor, this.heightFactor, required this.onTap, this.loading});
  final String label;
  final double? widthFactor;
  final double? heightFactor;
  final Function() onTap;
  final bool? loading;

  @override
  State<CustomFilledButton> createState() => _CustomFilledButtonState();
}

class _CustomFilledButtonState extends State<CustomFilledButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ((widget.loading == null) || widget.loading == false) ? widget.onTap : null,
      style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(
            Size(
              shortestSide(context) * (widget.widthFactor ?? 0.3),
              shortestSide(context) * (widget.heightFactor ?? 0.1),
            ),
          ),
          backgroundColor:
              ((widget.loading == null) || widget.loading == false) ? MaterialStatePropertyAll(primaryColor) : const MaterialStatePropertyAll(Colors.grey)),
      child: Center(
        child: ((widget.loading == null) || widget.loading == false)
            ? Text(
                widget.label,
                style: filledButtonTextStyle,
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
