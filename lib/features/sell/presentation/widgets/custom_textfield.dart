// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.label,
    this.controller,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onEdit,
    this.onTapOutside,
    this.keyboardType,
  });

  String label;
  final TextEditingController? controller;
  final Function()? onTap;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final Function()? onEdit;
  final Function(PointerDownEvent)? onTapOutside;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        controller: controller,
        onTapOutside: onTapOutside,
        onTap: onTap,
        onFieldSubmitted: onFieldSubmitted,
        onEditingComplete: onEdit,
        onChanged: onChanged,
        decoration: const InputDecoration().copyWith(labelText: label),
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        keyboardType: keyboardType,
      ),
    );
  }
}
