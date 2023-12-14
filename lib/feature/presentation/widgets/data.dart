import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';

class TextData extends StatelessWidget {
  final TextEditingController controller;
  const TextData({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 243,
        height: 41,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20),
            hintText: "Click and start typing",
            hintStyle: AppFonts.s13w500,
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ));
  }
}
